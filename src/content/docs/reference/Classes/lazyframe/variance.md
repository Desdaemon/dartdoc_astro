---
title: "variance"
description: |
   Aggregate all columns as their variances.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] variance</strong>({<span class="nobr"><strong>required</strong> int ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their variances.
### Implementation
```dart
/// Aggregate all columns as their variances.
  LazyFrame variance({required int ddof, dynamic hint}) =>
      RustLib.instance.api.lazyFrameVariance(
        that: this,
        ddof: ddof,
      );
```

[LazyFrame]: /reference/classes/lazyframe