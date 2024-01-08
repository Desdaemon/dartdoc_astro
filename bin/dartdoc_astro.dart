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
import 'package:path/path.dart' as p;
import 'package:slugify/slugify.dart' as slugify;

// import 'package:jinja/src/renderer.dart';
// import 'package:jinja/src/nodes.dart';

part 'utils.dart';
part 'config.dart';
part 'template.dart';
part 'renderer.dart';

const root = './src/content/docs/reference';

Future<void> main(List<String> arguments) async {
  await run(arguments).drain();
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
bool _isPublic(Element elm) => elm.isPublic;

/// A [library] combined with its exports.
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

  List<T> getCached<T extends Element>() => _memo[T]! as List<T>;

  @inline
  bool _isVisible(LibraryExportElement export, Element elm) =>
      _isPublic(elm) &&
      !(elm.documentationComment?.contains('@nodoc') ?? false) &&
      _filter
          .putIfAbsent(export, () => Filter.fromExport(export))
          .isAllowed(elm.name!);
}

final ResourceProvider provider = PhysicalResourceProvider();

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
        final extensions = composite.select((unit) => unit.extensions);
        final renderer = Renderer(composite);
        yield renderer.createListing(library.units.first);
        yield renderer
            .createGlobals(composite.select((unit) => unit.topLevelVariables));
        yield renderer.createTopLevelAccessors(
          composite.select((unit) => unit.accessors),
        );
        yield renderer.createTopLevelFunctions(
          composite.select((unit) => unit.functions),
        );
        yield renderer.createEnums(composite.select((unit) => unit.enums));
        yield renderer.createClasses(composite.select((unit) => unit.classes));
        yield renderer.createMixins(composite.select((unit) => unit.mixins));
        yield renderer.createExtensions(extensions);
      } else {
        eprintln('${libPath.path} could not be resolved:\n$lib');
      }
    }
  }
}
