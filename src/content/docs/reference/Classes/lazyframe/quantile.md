---
title: "quantile"
description: |
   Aggregate all columns as their quantiles.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] quantile</strong>({<span class="nobr"><strong>required</strong> [Expr] quantile</span>, <span class="nobr"><strong>required</strong> [QuantileInterpolOptions] interpol</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their quantiles.
### Implementation
```dart
/// Aggregate all columns as their quantiles.
  LazyFrame quantile(
          {required Expr quantile,
          required QuantileInterpolOptions interpol,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameQuantile(
        that: this,
        quantile: quantile,
        interpol: interpol,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[Expr]: /reference/classes/expr/
[QuantileInterpolOptions]: /reference/enums/quantileinterpoloptions/