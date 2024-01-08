---
title: "head"
description: |
   Returns the first few rows of this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] head</strong>({<span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the first few rows of this dataframe.
### Implementation
```dart
/// Returns the first few rows of this dataframe.
  DataFrame head({int? length, dynamic hint}) =>
      RustLib.instance.api.dataFrameHead(
        that: this,
        length: length,
      );
```

[DataFrame]: /reference/classes/dataframe
[dynamic]: #