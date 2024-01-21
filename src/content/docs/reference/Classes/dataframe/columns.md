---
title: "columns"
description: |
   Select multiple columns by name.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[VecSeries] columns</strong>({<span class="nobr"><strong>required</strong> [List]\<[String]> columns</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Select multiple columns by name.

 Note: Clones of the columns are returned, rather than a reference.
### Implementation
```dart
/// Select multiple columns by name.
  ///
  /// Note: Clones of the columns are returned, rather than a reference.
  VecSeries columns({required List<String> columns, dynamic hint}) =>
      RustLib.instance.api.dataFrameColumns(
        that: this,
        columns: columns,
      );
```

[VecSeries]: /reference/classes/vecseries/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html