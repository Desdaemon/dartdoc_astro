---
title: "filter"
description: |
   Filter by the specified predicate expression.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] filter</strong>({<span class="nobr"><strong>required</strong> [Expr] pred</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Filter by the specified predicate expression.
### Implementation
```dart
/// Filter by the specified predicate expression.
  LazyFrame filter({required Expr pred, dynamic hint}) =>
      RustLib.instance.api.lazyFrameFilter(
        that: this,
        pred: pred,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[Expr]: /reference/classes/expr/