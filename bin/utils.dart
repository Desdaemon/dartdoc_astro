part of 'dartdoc_astro.dart';

const inline = pragma('vm:prefer-inline');

void eprintln(Object? msg) => io.stderr.writeln(msg);

String paren(List<String> args, {String sep = ', '}) => '(${args.join(sep)})';

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

class Once<T> {
  T? _value;
  T getOrInit(T Function() init) => _value ??= init();
}

T catchContext<T>(String context, T Function() proc) {
  try {
    return proc();
  } catch (err) {
    eprintln(context);
    rethrow;
  }
}

extension<T> on Iterable<T> {
  (List<T>, List<T>) partitionBy(bool Function(T) condition) {
    final left = <T>[];
    final right = <T>[];
    for (final elm in this) {
      if (condition(elm)) {
        right.add(elm);
      } else {
        left.add(elm);
      }
    }
    return (left, right);
  }
}

final _whitespace = RegExp(r'^(\s*?)');
String? _indent(String? input, int width) {
  if (input == null) return null;
  if (_whitespace.matchAsPrefix(input.lines.first) case final match?) {
    final indent = match.group(1)!;
    return input.replaceAll(RegExp('^$indent', multiLine: true), ' ' * width);
  } else {
    return input;
  }
}

String? _slug(String? input) =>
    const {
      '>': 'op_gt',
      '>=': 'op_ge',
      '<': 'op_lt',
      '<=': 'op_le',
      '+': 'op_add',
      '-': 'op_sub',
      '*': 'op_mul',
      '/': 'op_div',
      '~/': 'op_idiv',
      '%': 'op_mod',
      '&': 'op_and',
      '|': 'op_or',
      '^': 'op_xor',
      '~': 'op_not',
      '==': 'op_eq',
      '!=': 'op_ne',
      '<<': 'op_shl',
      '>>': 'op_shr',
      '>>>': 'op_ushr',
      '[]': 'op_get',
      '[]=': 'op_set',
    }[input] ??
    (input != null ? slugify.slugify(input) : null);
