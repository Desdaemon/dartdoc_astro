part of 'dartdoc_astro.dart';

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
      final sink = io.File('$root/Functions/${fn.name}.md').openWrite();
      final template = env
          .copyWith(getAttribute: getAttribute)
          .getTemplate('function.md.jinja2');
      final collector = ReferenceCollector();
      template.environment.getItem;
      template.environment.filters['link'] = collector.link;
      template.environment.globals['generateReferences'] =
          collector.generateReferences;
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
        template.renderTo(sink, {'it': fn});
      } finally {
        await sink.flush();
        await sink.close();
      }
    }
  }

  Future<void> createEnums(List<EnumElement> enums) async {
    for (final enu in enums) {
      final sink = io.File('$root/Enums/${enu.name}.md').openWrite();
      final template = env
          .copyWith(getAttribute: getAttribute)
          .getTemplate('enum.md.jinja2');
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

  Future<void> createClasses(List<ClassElement> classes) async {
    for (final clazz in classes) {
      final sink = io.File('$root/Classes/${clazz.name}.md').openWrite();
      final template = env
          .copyWith(getAttribute: getAttribute)
          .getTemplate('class.md.jinja2');
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

  dynamic getAttribute(String key, Object? obj) {
    switch ((key, obj)) {
      case ('name', Element? elm):
        return elm?.name;
      case ('docs', Element? elm):
        return elm?.documentationComment?.replaceAll('///', '');
      case ('isPublic', Element elm):
        return elm.isPublic;
      case ('methods', InstanceElement inst):
        return inst.methods;
      case ('fields', InstanceElement inst):
        return inst.fields;
      case ('constructors', InterfaceElement elm):
        return elm.constructors;
      case ('props', InstanceElement inst):
        return inst.accessors;
      case ('extensions', Element? intf):
        // realistically, anyone can extend anything at any time without fearing
        // of something like Rust's orphan rules, but we have to at least limit
        // ourselves to the root library.
        return library
            .getCached<ExtensionElement>()
            .where((ext) => ext.extendedType.element == intf);
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
      case ('modifier', ExecutableElement exec):
        return switch ((exec.isAsynchronous, exec.isGenerator)) {
          (true, true) => 'async*',
          (true, false) => 'async',
          (false, true) => 'sync*',
          (false, false) => '',
        };
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
}

final env = Environment(
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
