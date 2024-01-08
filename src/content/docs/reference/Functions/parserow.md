---
title: "parseRow"
description: |
   Use this function to parse the results of [DataFrame.iter] and similar methods.
---
<span class="dart-code"><strong>Future&lt;List&lt;dynamic&gt;&gt; parseRow</strong>(<span class="nobr">FutureOr&lt;List&lt;dynamic&gt;&gt; row</span>, {<span class="nobr">bool <i>growable</i></span>}) async;</span>

 Use this function to parse the results of [DataFrame.iter] and similar methods.
### Implementation
```dart
/// Use this function to parse the results of [DataFrame.iter] and similar methods.
Future<List<dynamic>> parseRow(FutureOr<List<dynamic>> row,
    {bool growable = true}) async {
  final row_ = await Future.value(row);
  return row_.map(parseCell).toList(growable: growable);
}
```

