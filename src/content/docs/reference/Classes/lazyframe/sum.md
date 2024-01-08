---
title: "sum"
description: |
   Aggregate all columns as their sums.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] sum</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their sums.
### Implementation
```dart
/// Aggregate all columns as their sums.
  LazyFrame sum({dynamic hint}) => RustLib.instance.api.lazyFrameSum(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe