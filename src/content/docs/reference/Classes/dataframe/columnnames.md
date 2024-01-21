---
title: "columnNames"
description: |
   Get the names of this dataframe's columns.
---
<span class="dart-code"><strong>[List]\<[String]> columnNames</strong>();</span>

 Get the names of this dataframe's columns.
### Implementation
```dart
/// Get the names of this dataframe's columns.
  List<String> get columnNames => RustLib.instance.api.dataFrameColumnNames(
        that: this,
      );
```

[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html