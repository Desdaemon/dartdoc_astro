---
title: "max"
description: |
   Aggregate all columns as their max values.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] max</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their max values.
### Implementation
```dart
/// Aggregate all columns as their max values.
  LazyFrame max({dynamic hint}) => RustLib.instance.api.lazyFrameMax(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe/