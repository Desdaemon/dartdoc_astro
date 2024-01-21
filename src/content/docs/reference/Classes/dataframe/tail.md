---
title: "tail"
description: |
   Returns the last few rows of this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] tail</strong>({<span class="nobr">[int] <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the last few rows of this dataframe.
### Implementation
```dart
/// Returns the last few rows of this dataframe.
  DataFrame tail({int? length, dynamic hint}) =>
      RustLib.instance.api.dataFrameTail(
        that: this,
        length: length,
      );
```

[DataFrame]: /reference/classes/dataframe/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html