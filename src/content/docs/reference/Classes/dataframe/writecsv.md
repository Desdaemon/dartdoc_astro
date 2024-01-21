---
title: "writeCsv"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Future]\<void> writeCsv</strong>({<span class="nobr"><strong>required</strong> [String] path</span>, <span class="nobr">[bool] <i>includeBom</i></span>, <span class="nobr">[bool] <i>includeHeader</i></span>, <span class="nobr">[bool] <i>append</i></span>, <span class="nobr">[bool] <i>createNew</i></span>, <span class="nobr">[String] <i>nullValue</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Future<void> writeCsv(
          {required String path,
          bool includeBom = false,
          bool includeHeader = true,
          bool append = false,
          bool createNew = false,
          String? nullValue,
          dynamic hint}) =>
      RustLib.instance.api.dataFrameWriteCsv(
        that: this,
        path: path,
        includeBom: includeBom,
        includeHeader: includeHeader,
        append: append,
        createNew: createNew,
        nullValue: nullValue,
      );
```

[Future]: https://api.flutter.dev/flutter/dart-async/Future-class.html
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html