part of 'dartdoc_astro.dart';

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
