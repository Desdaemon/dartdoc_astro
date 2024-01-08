---
title: "unique"
description: |
   Returns the unique values of this series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] unique</strong>({<span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the unique values of this series.

 If `stable` is true, extra work is done to maintain the original order of elements.
### Implementation
```dart
/// Returns the unique values of this series.
  ///
  /// If `stable` is true, extra work is done to maintain the original order of elements.
  Series unique({bool maintainOrder = false, dynamic hint}) =>
      RustLib.instance.api.seriesUnique(
        that: this,
        maintainOrder: maintainOrder,
      );
```

[Series]: /reference/classes/series