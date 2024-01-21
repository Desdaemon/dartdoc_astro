---
title: "drop"
description: |
   Drops a column by name, producing a new dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] drop</strong>({<span class="nobr"><strong>required</strong> [String] column</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Drops a column by name, producing a new dataframe.
### Implementation
```dart
/// Drops a column by name, producing a new dataframe.
  DataFrame drop({required String column, dynamic hint}) =>
      RustLib.instance.api.dataFrameDrop(
        that: this,
        column: column,
      );
```

[DataFrame]: /reference/classes/dataframe/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html