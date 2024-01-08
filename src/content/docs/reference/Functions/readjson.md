---
title: "readJson"
description: |
   Reads a [.json](https://en.wikipedia.org/wiki/JSON) file into a [DataFrame].
---
<span class="dart-code"><strong>Future&lt;DataFrame&gt; readJson</strong>({<span class="nobr"><strong>required</strong> String path</span>, <span class="nobr">int? <i>batchSize</i></span>, <span class="nobr">List&lt;String&gt;? <i>projection</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Reads a [.json](https://en.wikipedia.org/wiki/JSON) file into a [DataFrame].
### Implementation
```dart
/// Reads a [.json](https://en.wikipedia.org/wiki/JSON) file into a [DataFrame].
Future<DataFrame> readJson(
        {required String path,
        int? batchSize,
        List<String>? projection,
        dynamic hint}) =>
    RustLib.instance.api.readJson(
        path: path, batchSize: batchSize, projection: projection, hint: hint);
```

