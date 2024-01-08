---
title: "from"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Literals] from</strong>(<span class="nobr">dynamic value</span>, <span class="nobr">[DataType] dtype</span>);</span>


### Implementation
```dart
static Literals from(dynamic value, DataType dtype) => switch (value) {
        List<int> ints => Literals.int64(Int64List.fromList(ints)),
        Iterable<int> ints =>
          Literals.int64(Int64List.fromList(ints.toList(growable: false))),
        List<int?> ints => Literals.nullInt64(ints),
        Iterable<int?> ints => Literals.nullInt64(ints.toList(growable: false)),
        List<double> doubles => Literals.float64(Float64List.fromList(doubles)),
        Iterable<double> doubles => Literals.float64(
            Float64List.fromList(doubles.toList(growable: false))),
        List<double?> doubles => Literals.nullFloat64(doubles),
        Iterable<double?> doubles =>
          Literals.nullFloat64(doubles.toList(growable: false)),
        Series series => series.intoLiterals(),
        List<String> strings => Literals.stringLike(strings, dtype),
        Iterable<String> strings =>
          Literals.stringLike(strings.toList(growable: false), dtype),
        List<String?> strings => Literals.nullStringLike(strings, dtype),
        Iterable<String?> strings =>
          Literals.nullStringLike(strings.toList(growable: false), dtype),
        List<Duration> durations => Literals.duration(durations),
        Iterable<Duration> durations =>
          Literals.duration(durations.toList(growable: false)),
        List<Duration?> durations => Literals.nullDuration(durations),
        Iterable<Duration?> durations =>
          Literals.nullDuration(durations.toList(growable: false)),
        Iterable<dynamic> unknown => Literals.nullStringLike(
            [for (final item in unknown) item != null ? '$item' : null],
            dtype,
          ),
        _ => throw ArgumentError.value(
            value, 'value', 'Unsupported type: ${value.runtimeType}'),
      };
```

[Literals]: /reference/classes/literals
[DataType]: /reference/classes/datatype