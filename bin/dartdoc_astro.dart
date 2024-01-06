import 'dart:async';
import 'dart:io' as io;

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/file_system/file_system.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:jinja/loaders.dart';
import 'package:yaml/yaml.dart' as yaml;
import 'package:jinja/jinja.dart';

void eprintln(Object? msg) => io.stderr.writeln(msg);

// extension<T> on Iterable<T> {
//   /// Parallel [map]. [mapper] should not be a closure so as to not share data with the main isolate.
//   Stream<U> parMap<U>(FutureOr<U> Function(T) mapper) =>
//       Stream.fromFutures(map((item) => Isolate.run(() => mapper(item))));
// }

const inline = pragma('vm:prefer-inline');

final ResourceProvider provider = PhysicalResourceProvider();
String canonicalize(String path, {bool strict = true}) {
  final canon = Uri.base.resolve(path).normalizePath();
  final out = canon.toFilePath();
  if (strict && !io.Directory(out).existsSync()) {
    throw Exception('$out does not exist or not a directory; bailing.');
  }
  return out;
}

T dbg<T>(T value, [String label = '']) {
  if (label.isEmpty) {
    eprintln(value.toString());
  } else {
    eprintln('($label) $value');
  }
  return value;
}

class Config {
  List<String> excluded = const [];
  List<String> included = const [];
  String outdir = 'docs';

  Config.parse({String configPath = 'dartdoc_astro.yaml'}) {
    final path = Uri.base.resolve(configPath);
    final file = io.File(path.toFilePath());
    if (!file.existsSync()) return;

    final yaml.YamlMap contents =
        yaml.loadYaml(file.readAsStringSync(), sourceUrl: path);
    switch (contents.nodes) {
      case {'exclude': yaml.YamlList(:final nodes)}:
        excluded =
            nodes.map((node) => node.value as String).toList(growable: false);
      case {'include': yaml.YamlList(:final nodes)}:
        included =
            nodes.map((node) => node.value as String).toList(growable: false);
      case {'outdir': yaml.YamlScalar(:String value)}:
        outdir = value;
    }
  }

  factory Config.merge(List<String> args) {
    Config? config;
    String? outdir;
    List<String> included = const [];
    loop:
    while (true) {
      switch (args) {
        case ['-c' || '--config', final configPath, ...final rest]:
          args = rest;
          config ??= Config.parse(configPath: configPath);
          continue;
        case ['-o' || '--outdir', final out, ...final rest]:
          args = rest;
          outdir = out;
          continue;
        case _:
          included = args;
          break loop;
      }
    }

    config ??= Config.parse();
    if (included.isNotEmpty) config.included = included;
    // Expand
    config.included = [
      for (final path in config.included)
        if (path.contains('*'))
          for (final entity in Glob(path).listSync()) canonicalize(entity.path)
        else
          canonicalize(path)
    ];
    if (outdir != null) config.outdir = outdir;
    return config;
  }
}

class Once<T> {
  T? _value;
  T getOrInit(T Function() init) => _value ??= init();
}

class Filter {
  final allowed = <String>{};
  final disallowed = <String>{};
  Filter();

  bool isAllowed(String name) =>
      (allowed.isEmpty || allowed.contains(name)) &&
      (disallowed.isEmpty || !disallowed.contains(name));

  factory Filter.fromExport(LibraryExportElement export) {
    final out = Filter();
    if (export.combinators.isEmpty) return out;

    for (final combi in export.combinators) {
      if (combi case ShowElementCombinator(:final shownNames)) {
        out.allowed.addAll(shownNames);
      } else if (combi case HideElementCombinator(:final hiddenNames)) {
        out.disallowed.addAll(hiddenNames);
      }
    }
    return out;
  }
}

@inline
bool _isPublic(Element elm) => !elm.name!.startsWith('_');

class CompositeLibrary {
  final LibraryElement library;
  final _filter = <LibraryExportElement, Filter>{};
  final _exportedUnits =
      Once<List<(LibraryExportElement, CompilationUnitElement)>>();
  final _memo = <Type, List<Element>>{};
  CompositeLibrary(this.library);

  List<(LibraryExportElement, CompilationUnitElement)> get exportedUnits =>
      _exportedUnits.getOrInit(() => [
            for (final export in library.libraryExports)
              if (export.exportedLibrary?.units case final units?)
                for (final unit in units) (export, unit)
          ]);

  List<T> select<T extends Element>(
    Iterable<T> Function(CompilationUnitElement unit) extractor,
  ) =>
      _memo.putIfAbsent(
        T,
        () => <T>[
          for (final unit in library.units) ...extractor(unit).where(_isPublic),
          for (final (export, unit) in exportedUnits)
            for (final elm in extractor(unit))
              if (_isVisible(export, elm)) elm
        ],
      ) as List<T>;

  @inline
  bool _isVisible(LibraryExportElement export, Element elm) =>
      _isPublic(elm) &&
      !(elm.documentationComment?.contains('@nodoc') ?? false) &&
      _filter
          .putIfAbsent(export, () => Filter.fromExport(export))
          .isAllowed(elm.name!);
}

Future<void> main(List<String> arguments) async {
  await run(arguments).drain();
}

Stream<Future<void>> run(List<String> arguments) async* {
  final config = Config.merge(arguments);
  if (config.included.isEmpty) {
    config.included = const ['.'];
  }
  final excluded = [
    for (final excluded in config.excluded)
      Glob(canonicalize(excluded, strict: false))
  ];
  final collection = AnalysisContextCollection(
    includedPaths: config.included,
    resourceProvider: provider,
  );
  for (final root in config.included) {
    await for (final libPath in Glob('$root/**.dart').list()) {
      if (excluded.any((path) => path.matches(libPath.path))) continue;
      final lib = await collection
          .contextFor(root)
          .currentSession
          .getResolvedLibrary(libPath.path);
      if (lib case ResolvedLibraryResult(element: final library)) {
        final composite = CompositeLibrary(library);
        yield createListing(library.units.first);
        yield createGlobals(composite.select((unit) => unit.topLevelVariables));
        yield createTopLevelAccessors(
          composite.select((unit) => unit.accessors),
        );
        yield createTopLevelFunctions(
          composite.select((unit) => unit.functions),
        );
        yield createEnums(composite.select((unit) => unit.enums));
        yield createClasses(composite.select((unit) => unit.classes));
        yield createMixins(composite.select((unit) => unit.mixins));
        yield createExtensions(composite.select((unit) => unit.extensions));
      } else {
        eprintln('${libPath.path} could not be resolved:\n$lib');
      }
    }
  }
}

Future<void> createListing(CompilationUnitElement unit) async {
  print('Library ${unit.getExtendedDisplayName(unit.name ?? '<unnamed>')}:');
  // unit.topLevelVariables;
  // unit.accessors;
  // unit.functions;
  // unit.enums;
  // unit.classes;
  // unit.mixins;
  // unit.extensions;
}

Future<void> createTopLevelAccessors(
    List<PropertyAccessorElement> accessors) async {
  if (accessors.isEmpty) return;
  print('  Accessors:');
  for (final accessor in accessors) {
    print('  - $accessor;');
  }
}

Future<void> createGlobals(List<TopLevelVariableElement> globals) async {
  if (globals.isEmpty) return;
  print('  Globals:');
  for (final global in globals) {
    print('  - $global;');
  }
}

String paren(List<String> args, {String sep = ', '}) => '(${args.join(sep)})';

Future<void> createTopLevelFunctions(List<FunctionElement> functions) async {
  if (functions.isEmpty) return;
  print('  Functions:');
  for (final fn in functions) {
    print('  - $fn;');
  }
}

Future<void> createEnums(List<EnumElement> enums) async {
  for (final enu in enums) {
    final sink = io.File('./src/content/docs/reference/Enums/${enu.name}.md')
        .openWrite();
    final template = env.getTemplate('enum.md.jinja2');
    final collector = ReferenceCollector();
    template.environment.filters['link'] = collector.link;
    try {
      template.renderTo(sink, {'it': enu});
    } finally {
      await sink.flush();
      await sink.close();
    }
  }
}

final _commentLine = RegExp(r'///(\s*)');
String repadLeft(String multiline, {required int width}) {
  if (multiline.isEmpty) return multiline;
  return multiline.splitMapJoin(_commentLine,
      onMatch: (m) => ''.padLeft(width));
}

class ReferenceCollector {
  final Map<String, String> references = {};

  String link(DartType ty) {
    final key = ty.toString().replaceAll('<', r'\<');
    if (ty.element?.library?.name.startsWith('dart.') ?? false) {
      return key;
    }
    final link = references.putIfAbsent(key, () {
      return switch (ty.element) {
        ClassElement clazz => '/reference/classes/${clazz.name.toLowerCase()}',
        EnumElement enu => '/reference/enums/${enu.name.toLowerCase()}',
        MixinElement mixin => '/reference/mixins/${mixin.name.toLowerCase()}',
        _ => '#'
      };
    });
    if (link != '#') {
      return '[$key]';
    } else {
      return ty.toString();
    }
  }

  String generateReferences() {
    return references.entries
        .map((entry) => '[${entry.key}]: ${entry.value}')
        .join('\n');
  }
}

dynamic getAttribute(String key, Object? obj) {
  switch ((key, obj)) {
    case ('name', Element? elm):
      return elm?.name;
    case ('docs', Element? elm):
      return elm?.documentationComment?.replaceAll('///', '');
    case ('isPublic', Element elm):
      return _isPublic(elm);
    case ('methods', InstanceElement inst):
      return inst.methods;
    case ('fields', InstanceElement inst):
      return inst.fields;
    case ('constructors', InterfaceElement elm):
      return elm.constructors;
    case ('props', InstanceElement inst):
      return inst.accessors;
    case ('isConst', ConstructorElement ctor):
      return ctor.isConst;
    case ('isFactory', ConstructorElement ctor):
      return ctor.isFactory;
    case ('isNotEmpty', String val):
      return val.isNotEmpty;
    case ('params', FunctionTypedElement func):
      return func.parameters;
    case ('returnType', FunctionTypedElement func):
      return func.returnType;
    case ('isStatic', ClassMemberElement member):
      return member.isStatic;
    case ('type', VariableElement param):
      return param.type;
    case ('default', ParameterElement param):
      return param.defaultValueCode;
    case ('isFinal', VariableElement param):
      return param.isFinal;
    case ('isStatic', VariableElement param):
      return param.isStatic;
    case ('isSynthetic', Element param):
      return param.isSynthetic;
    case ('isEnumConstant', FieldElement field):
      return field.isEnumConstant;
    case ('makesSyntheticVariable', PropertyAccessorElement prop):
      // not defined as a variable, but by a getter and/or a setter
      return prop.variable.isSynthetic;
    case ('isGetter', PropertyAccessorElement prop):
      return prop.isGetter;
    case ('isSetter', PropertyAccessorElement prop):
      return prop.isSetter;
    default:
      throw Exception((obj: '${obj.runtimeType}($obj)', key: key));
  }
}

final env = Environment(
  getAttribute: getAttribute,
  trimBlocks: true,
  filters: {
    'summarize': (String? doc) => doc?.split('\n').firstOrNull,
    'params': _methodParams,
    'defaultIfBlank': (String? doc, String replacement) =>
        (doc?.isEmpty ?? true) ? replacement : doc,
    'display': (Object? obj) => switch (obj) {
          Element? elm => elm?.getDisplayString(withNullability: true),
          _ => obj,
        },
  },
  loader: FileSystemLoader(
    paths: [Uri.base.resolve('bin/templates').toFilePath()],
    extensions: {'jinja2'},
  ),
);

Future<void> createClasses(List<ClassElement> classes) async {
  for (final clazz in classes) {
    final sink =
        io.File('./src/content/docs/reference/Classes/${clazz.name}.md')
            .openWrite();
    final template = env.getTemplate('class.md.jinja2');
    final collector = ReferenceCollector();
    template.environment.filters['link'] = collector.link;
    template.environment.globals['generateReferences'] =
        collector.generateReferences;
    try {
      template.renderTo(sink, {'it': clazz});
    } finally {
      await sink.flush();
      await sink.close();
    }
  }
}

String _methodParams(List<ParameterElement> params) {
  final firstNamed = params.indexWhere((param) => param.isNamed);
  if (firstNamed != -1) {
    final positional = params.sublist(0, firstNamed);
    final named = params.sublist(firstNamed);
    final positionalFormatted =
        positional.map((param) => param.name).join(', ');
    final namedFormatted = named.map((param) {
      if (param.isRequiredNamed) {
        return '<strong>required</strong> ${param.name}';
      } else {
        return '<i>${param.name}</i>';
      }
    }).join(', ');
    return [
      if (positionalFormatted.isNotEmpty) positionalFormatted,
      if (namedFormatted.isNotEmpty) '{$namedFormatted}'
    ].join(', ');
  }

  final firstPositional =
      params.indexWhere((param) => param.isOptionalPositional);
  if (firstPositional != -1) {
    final required = params.sublist(0, firstPositional);
    final optional = params.sublist(firstPositional);
    final requiredFormatted = required.map((param) => param.name).join(', ');
    final optionalFormatted = optional.map((param) => param.name).join(', ');
    return [
      if (requiredFormatted.isNotEmpty) requiredFormatted,
      if (optionalFormatted.isNotEmpty) '[<i>$optionalFormatted</i>]',
    ].join(',');
  }

  return params.map((param) => param.name).join(', ');
}

Future<void> createMixins(List<MixinElement> mixins) async {
  if (mixins.isEmpty) return;
  print('  Mixins:');
  for (final mixin in mixins) {
    print('  - $mixin');
  }
}

Future<void> createExtensions(List<ExtensionElement> extensions) async {
  if (extensions.isEmpty) return;
  print('  Extensions:');
  for (final ext in extensions) {
    print('  - $ext');
  }
}
