---
title: "readJson"
description: |
   Reads a [.json](https://en.wikipedia.org/wiki/JSON) file into a [DataFrame].
---
<span class="dart-code"><strong>[Future]\<[DataFrame]> readJson</strong>({<span class="nobr"><strong>required</strong> [String] path</span>, <span class="nobr">[int] <i>batchSize</i></span>, <span class="nobr">[List]\<[String]> <i>projection</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

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

[DataFrame]: /reference/classes/dataframe/
[Future]: https://api.flutter.dev/flutter/dart-async/Future-class.html
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html