---
title: "sort"
description: |
   Returns a new sorted series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] sort</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a new sorted series.
### Implementation
```dart
/// Returns a new sorted series.
  Series sort({bool reverse = false, dynamic hint}) =>
      RustLib.instance.api.seriesSort(
        that: this,
        reverse: reverse,
      );
```

[Series]: /reference/classes/series