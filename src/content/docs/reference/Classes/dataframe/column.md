---
title: "column"
description: |
   Select a single column by name.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] column</strong>({<span class="nobr"><strong>required</strong> [String] column</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Select a single column by name.

 Note: A clone of the column is returned, rather than a reference.
### Implementation
```dart
/// Select a single column by name.
  ///
  /// Note: A clone of the column is returned, rather than a reference.
  Series column({required String column, dynamic hint}) =>
      RustLib.instance.api.dataFrameColumn(
        that: this,
        column: column,
      );
```

[Series]: /reference/classes/series/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html