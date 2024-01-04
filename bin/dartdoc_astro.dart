import 'dart:async';
import 'dart:io' as io;
import 'dart:isolate';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/file_system/file_system.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:yaml/yaml.dart' as yaml;

void eprintln(Object? msg) => io.stderr.writeln(msg);

extension<T> on Iterable<T> {
  /// Parallel [map]. [mapper] should not be a closure so as to not share data with the main isolate.
  Stream<U> parMap<U>(FutureOr<U> Function(T) mapper) =>
      Stream.fromFutures(map((item) => Isolate.run(() => mapper(item))));
}

final ResourceProvider provider = PhysicalResourceProvider();
String canonicalize(String path) {
  final canon = Uri.base.resolve(path).normalizePath();
  final out = canon.toFilePath();
  if (!io.Directory(out).existsSync()) {
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
    if (!io.File(path.toFilePath()).existsSync()) return;

    final contents = yaml.loadYaml(path.toFilePath(), sourceUrl: path);
    switch (contents) {
      case {'exclude': List<String> exclude}:
        excluded = exclude;
      case {'include': List<String> include}:
        included = include;
      case {'outdir': String out}:
        outdir = out;
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
    if (outdir != null) config.outdir = outdir;
    return config;
  }
}

Future<void> main(List<String> arguments) async {
  final config = Config.merge(arguments);
  if (config.included.isEmpty) {
    config.included = const ['.'];
  }
  final included = config.included.map(canonicalize).toList(growable: false);
  final collection = AnalysisContextCollection(
    includedPaths: included,
    excludedPaths: config.excluded.map(canonicalize).toList(growable: false),
    resourceProvider: provider,
  );
  for (final root in included) {
    await for (final libPath in Glob('$root/**.dart').list()) {
      final lib = await collection
          .contextFor(root)
          .currentSession
          .getResolvedLibrary(libPath.path);
      if (lib case ResolvedLibraryResult(:final element)) {
        for (final unit in element.units) {
          await createListing(unit);
          await createTopLevelAccessors(unit.accessors);
          await createTopLevelFunctions(unit.functions);
          await createEnums(unit.enums);
          await createClasses(unit.classes);
          await createMixins(unit.mixins);
          await createExtensions(unit.extensions);
        }
      } else {
        eprintln('${libPath.path} could not be resolved:\n$lib');
      }
    }
  }
}

Future<void> createListing(CompilationUnitElement unit) async {
  eprintln('Library ${unit.getExtendedDisplayName(null)}:');
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
  eprintln('  Accessors:');
  for (final accessor in accessors) {
    eprintln('  - $accessor');
  }
}

String paren(List<String> args, {String sep = ', '}) => '(${args.join(sep)})';

Future<void> createTopLevelFunctions(List<FunctionElement> functions) async {
  eprintln('  Functions:');
  for (final fn in functions) {
    eprintln('  - $fn');
  }
}

Future<void> createEnums(List<EnumElement> enums) async {
  eprintln('  Enums:');
  for (final enu in enums) {
    eprintln('  - $enu');
  }
}

Future<void> createClasses(List<ClassElement> classes) async {
  eprintln('  Classes:');
  for (final clazz in classes) {
    eprintln('  - $clazz');
    if (clazz.documentationComment case final doc?) eprintln('    $doc');
    eprintln('    Methods:');
    for (final method in clazz.methods) {
      eprintln('    - $method');
    }
  }
}

Future<void> createMixins(List<MixinElement> mixins) async {
  eprintln('  Mixins:');
  for (final mixin in mixins) {
    eprintln('  - $mixin');
  }
}

Future<void> createExtensions(List<ExtensionElement> extensions) async {
  eprintln('  Extensions:');
  for (final ext in extensions) {
    eprintln('  - $ext');
  }
}
