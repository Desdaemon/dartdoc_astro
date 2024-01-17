---
title: "median"
description: |
   Aggregate all columns as their medians.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] median</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their medians.
### Implementation
```dart
/// Aggregate all columns as their medians.
  LazyFrame median({dynamic hint}) => RustLib.instance.api.lazyFrameMedian(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe/