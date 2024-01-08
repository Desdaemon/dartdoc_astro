---
title: "head"
description: |
   Return the first [n] rows of each group.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] head</strong>({<span class="nobr">int? <i>n</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Return the first [n] rows of each group.
### Implementation
```dart
/// Return the first [n] rows of each group.
  LazyFrame head({int? n, dynamic hint}) =>
      RustLib.instance.api.lazyGroupByHead(
        that: this,
        n: n,
      );
```

[LazyFrame]: /reference/classes/lazyframe