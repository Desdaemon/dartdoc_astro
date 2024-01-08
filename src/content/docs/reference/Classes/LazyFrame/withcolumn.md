---
title: "withColumn"
description: |
   Add a column to this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] withColumn</strong>({<span class="nobr"><strong>required</strong> [Expr] expr</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Add a column to this dataframe.
### Implementation
```dart
/// Add a column to this dataframe.
  LazyFrame withColumn({required Expr expr, dynamic hint}) =>
      RustLib.instance.api.lazyFrameWithColumn(
        that: this,
        expr: expr,
      );
```

[LazyFrame]: /reference/classes/lazyframe
[Expr]: /reference/classes/expr
[dynamic]: #