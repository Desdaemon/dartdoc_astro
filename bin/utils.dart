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

// extension<T> on Iterable<T> {
//   /// Parallel [map]. [mapper] should not be a closure so as to not share data with the main isolate.
//   Stream<U> parMap<U>(FutureOr<U> Function(T) mapper) =>
//       Stream.fromFutures(map((item) => Isolate.run(() => mapper(item))));
// }
