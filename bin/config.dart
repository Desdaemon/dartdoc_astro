part of 'dartdoc_astro.dart';

class Config {
  var excluded = const <String>[];
  var included = const <String>[];
  String outdir = 'docs';

  Config.parse({String configPath = 'dartdoc_astro.yaml'}) {
    final path = Uri.base.resolve(configPath);
    final file = io.File(path.toFilePath());
    if (!file.existsSync()) return;

    final yaml.YamlMap contents =
        yaml.loadYaml(file.readAsStringSync(), sourceUrl: path);
    if (contents['exclude'] case yaml.YamlList values) {
      excluded = values.whereType<String>().toList(growable: false);
    }
    if (contents['include'] case yaml.YamlList values) {
      included = values.whereType<String>().toList(growable: false);
    }
    if (contents['outdir'] case String value) {
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
          args = dbg(rest, '-c');
          config ??= Config.parse(configPath: configPath);
          continue;
        case ['-o' || '--outdir', final out, ...final rest]:
          args = rest;
          outdir = out;
          continue;
        case _:
          included = dbg(args, 'rest');
          break loop;
      }
    }

    config ??= Config.parse();
    if (included.isNotEmpty) config.included = included;
    config.included = [
      for (final path in config.included)
        if (dbg(path, 'path').contains('*'))
          for (final entity
              in Glob(canonicalize(path, strict: false)).listSync())
            entity.path
        else
          canonicalize(path)
    ];
    if (outdir != null) config.outdir = outdir;
    return config;
  }
}
