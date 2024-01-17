part of 'dartdoc_astro.dart';

const _nobr = "nobr";

class Renderer {
  final CompositeLibrary library;

  const Renderer(this.library);

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

  Future<void> createTopLevelFunctions(List<FunctionElement> functions) async {
    for (final fn in functions) {
      await _createFunctionImpl(fn, '$root/Functions/${_slug(fn.name)}.md');
    }
  }

  Future<void> _createFunctionImpl(
    FunctionTypedElement fn,
    String filename, {
    Map<String, dynamic> frontMatter = const {},
  }) async {
    await io.Directory(p.dirname(filename)).create(recursive: true);
    final sink = io.File(filename).openWrite();
    final template = env
        .copyWith(getAttribute: getAttribute)
        .getTemplate('function.md.jinja2');
    final collector = ReferenceCollector();
    template.environment.filters['params'] =
        ParamsRenderer(collector.link).call;
    template.environment.filters['link'] = collector.link;
    template.environment.filters['displaySource'] = (Element? elm) {
      // get the element's span
      if (elm!.session!.getParsedLibraryByElement(elm.library!)
          case ParsedLibraryResult lib) {
        if (lib.getElementDeclaration(elm) case final decl?) {
          return elm.source?.contents.data
              .substring(decl.node.offset, decl.node.end);
        }
      }
    };
    try {
      template.renderTo(sink, {
        'it': fn,
        'generateReferences': collector.generateReferences,
        'frontMatter': yaml.YamlMap.wrap(frontMatter).nodes
      });
    } finally {
      await sink.flush();
      await sink.close();
    }
  }

  Future<void> createEnums(List<EnumElement> enums) async {
    for (final enu in enums) {
      final sink = io.File('$root/Enums/${_slug(enu.name)}.md').openWrite();
      final template = env
          .copyWith(getAttribute: getAttribute)
          .getTemplate('enum.md.jinja2');
      final collector = ReferenceCollector();
      template.environment.filters['link'] = collector.link;
      template.environment.filters['params'] =
          ParamsRenderer(collector.link).call;
      try {
        template.renderTo(sink, {'it': enu});
      } finally {
        await sink.flush();
        await sink.close();
      }
    }
  }

  Future<void> createClasses(List<ClassElement> classes) async {
    await Future.wait([
      for (final clazz in classes)
        _createInstanced(clazz, templateName: 'class.md.jinja2')
    ]);
  }

  Future<void> _createInstanced<T extends InstanceElement>(
    T interface, {
    required String templateName,
  }) async {
    final descriptor = _describeElementType(interface, throwIfAbsent: true)!;
    final base = '$root/$descriptor/${_slug(interface.name)}';
    await io.Directory(base).create(recursive: true);
    final sink = io.File('$base.md').openWrite();
    final template =
        env.copyWith(getAttribute: getAttribute).getTemplate(templateName);
    final collector = ReferenceCollector();
    template.environment.filters['link'] = collector.link;
    template.environment.filters['params'] =
        ParamsRenderer(collector.link).call;
    try {
      template.renderTo(sink, {
        'it': interface,
        'generateReferences': collector.generateReferences,
      });
      await Future.wait([
        for (final prop in interface.accessors)
          if (prop.variable.isSynthetic)
            _createFunctionImpl(prop, '$base/${_slug(prop.name)}.md'),
        for (final method in interface.methods)
          _createFunctionImpl(
            method,
            '$base/${_slug(method.name)}.md',
            frontMatter: const {
              'sidebar': {'hidden': true}
            },
          ),
      ]);
    } finally {
      await sink.flush();
      await sink.close();
    }
  }

  Future<void> createMixins(List<MixinElement> mixins) async {
    if (mixins.isEmpty) return;
    print('  Mixins:');
    for (final mixin in mixins) {
      print('  - $mixin');
    }
  }

  Future<void> createExtensions(List<ExtensionElement> extensions) async {
    await Future.wait([
      for (final ext in extensions)
        _createInstanced(ext, templateName: 'extension.md.jinja2')
    ]);
  }

  dynamic getAttribute(String key, Object? obj) {
    switch ((key, obj)) {
      case ('name', Element? elm):
        return elm?.name;
      case ('docs', Element? elm):
        return elm?.documentationComment?.replaceAll('///', '');
      case ('isPublic', Element elm):
        return elm.isPublic;
      case ('methods', InstanceElement inst):
        final (methods, operators) =
            inst.methods.partitionBy((method) => method.isOperator);
        return [methods, operators];
      case ('fields', InstanceElement inst):
        return inst.fields;
      case ('constructors', InterfaceElement elm):
        return elm.constructors;
      case ('props', InstanceElement inst):
        return inst.accessors;
      case ('extensions', Element? self):
        // realistically, anyone can extend anything at any time without fearing
        // of something like Rust's orphan rules, but we have to at least limit
        // ourselves to the root library.
        return library
            .getCached<ExtensionElement>()
            .where((ext) => ext.extendedType.element == self);
      case ('super', InterfaceElement intf):
        return intf.supertype;
      case ('supers', InterfaceElement intf):
        return intf.allSupertypes;
      case ('element', DartType type):
        return type.element;
      case ('isConst', ConstructorElement ctor):
        return ctor.isConst;
      case ('isFactory', ConstructorElement ctor):
        return ctor.isFactory;
      case ('isNotEmpty', String val):
        return val.isNotEmpty;
      case ('params', FunctionTypedElement func):
        return func.parameters;
      case ('typeParams', TypeParameterizedElement elm):
        return elm.typeParameters;
      case ('isOperator', ExecutableElement func):
        return func.isOperator;
      case ('returnType', FunctionTypedElement func):
        return func.returnType;
      case ('modifier', ExecutableElement exec):
        return switch ((exec.isAsynchronous, exec.isGenerator)) {
          (true, true) => 'async*',
          (true, false) => 'async',
          (false, true) => 'sync*',
          (false, false) => '',
        };
      case ('isStatic', ClassMemberElement member):
        return member.isStatic;
      case ('type', PropertyAccessorElement prop):
        if (prop.isGetter) return prop.returnType;
        if (prop.isSetter) return prop.parameters.first.type;
      case ('type', VariableElement param):
        return param.type;
      case ('extendedType', ExtensionElement ext):
        return ext.extendedType;
      case ('default', ParameterElement param):
        return param.defaultValueCode;
      case ('isFinal', VariableElement param):
        return param.isFinal;
      case ('isStatic', VariableElement param):
        return param.isStatic;
      case ('isObject', DartType elm):
        return elm.isDartCoreObject;
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
        return (obj as dynamic)[key];
      // throw Exception((obj: '${obj.runtimeType}($obj)', key: key));
    }
  }
}

extension on String {
  Iterable<String> get lines sync* {
    int current = 0;
    int next;
    while ((next = indexOf('\n', current)) != -1) {
      yield substring(current, next);
      current = next + 1;
    }
    yield substring(current);
  }
}

final env = Environment(
  trimBlocks: true,
  filters: {
    'summarize': (String? doc) =>
        doc?.lines.takeWhile((line) => line.isNotEmpty).join('\n'),
    'params': const ParamsRenderer().call,
    'defaultIfBlank': (String? doc, String replacement) =>
        (doc?.isEmpty ?? true) ? replacement : doc,
    'display': (Object? obj) => switch (obj) {
          Element? elm => elm?.getDisplayString(withNullability: true),
          _ => obj,
        },
    'indent': _indent,
    'slug': _slug,
    'describe': (Element? elm) =>
        _describeElementType(elm, throwIfAbsent: true)!,
  },
  loader: FileSystemLoader(
    paths: [Uri.base.resolve('bin/templates').toFilePath()],
    extensions: {'jinja2'},
  ),
);

class ParamsRenderer {
  final String Function(DartType) formatType;
  const ParamsRenderer([this.formatType = _defaultLinker]);
  static String _defaultLinker(DartType type) =>
      type.getDisplayString(withNullability: true);

  String call(List<ParameterElement> params) {
    final firstNamed = params.indexWhere((param) => param.isNamed);
    if (firstNamed != -1) {
      final positional = params.sublist(0, firstNamed);
      final named = params.sublist(firstNamed);
      final positionalFormatted = positional
          .map((param) =>
              '<span class="$_nobr">${formatType(param.type)} ${param.name}</span>')
          .join(', ');
      final namedFormatted = named.map((param) {
        final type = formatType(param.type);
        if (param.isRequiredNamed) {
          return '<span class="$_nobr"><strong>required</strong> $type ${param.name}</span>';
        } else {
          return '<span class="$_nobr">$type <i>${param.name}</i></span>';
        }
      }).join(', ');
      return [
        if (positionalFormatted.isNotEmpty) positionalFormatted,
        if (namedFormatted.isNotEmpty) '{$namedFormatted}'
      ].join(', ');
    }

    String makeParam(ParameterElement param) =>
        '<span class="$_nobr">${formatType(param.type)} ${param.name}</span>';

    final firstPositional =
        params.indexWhere((param) => param.isOptionalPositional);
    if (firstPositional != -1) {
      final required = params.sublist(0, firstPositional);
      final optional = params.sublist(firstPositional);
      final requiredFormatted = required.map(makeParam).join(', ');
      final optionalFormatted = optional.map(makeParam).join(', ');
      return [
        if (requiredFormatted.isNotEmpty) requiredFormatted,
        if (optionalFormatted.isNotEmpty) '[<i>$optionalFormatted</i>]',
      ].join(', ');
    }

    return params.map(makeParam).join(', ');
  }
}

String? _describeElementType(Element? obj, {bool throwIfAbsent = false}) {
  return switch (obj) {
    ClassElement _ => 'Classes',
    EnumElement _ => 'Enums',
    MixinElement _ => 'Mixins',
    ExtensionElement _ => 'Extensions',
    _ when throwIfAbsent => throw Exception(
        'Please register ${obj.runtimeType} with _describeElementType'),
    _ => null
  };
}

String _linkElement(Element? elm) {
  if (elm != null) {
    if (_describeElementType(elm) case final descriptor?) {
      return '/reference/${descriptor.toLowerCase()}/${_slug(elm.name)}/';
    }
  }
  return '#';
}

class ReferenceCollector {
  final Map<String, String> references = {};

  String link(DartType ty) {
    final key = htmlEscape.convert(ty.getDisplayString(withNullability: true));
    if (ty.element?.library?.name.startsWith('dart.') ?? true) {
      return key;
    }
    final link = references.putIfAbsent(key, () => _linkElement(ty.element));
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

extension on Environment {
  Environment copyWith({
    AttributeGetter? getAttribute,
    Map<String, Function>? filters,
    Loader? loader,
    Map<String, Template>? templates,
    bool? trimBlocks,
  }) =>
      Environment(
        getAttribute: getAttribute ?? this.getAttribute,
        filters: filters ?? this.filters,
        loader: loader ?? this.loader,
        templates: templates ?? this.templates,
        trimBlocks: trimBlocks ?? this.trimBlocks,
      );
}
