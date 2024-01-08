---
title: "std"
description: |
   Calculate the standard deviation of this expression with the specified
   [ddof] or [delta degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_(statistics)).
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] std</strong>(<span class="nobr">int ddof</span>);</span>

 Calculate the standard deviation of this expression with the specified
 [ddof] or [delta degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_(statistics)).
### Implementation
```dart
/// Calculate the standard deviation of this expression with the specified
  /// [ddof] or [delta degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_(statistics)).
  Expr std(int ddof) => Expr.agg(AggExpr.std(this, ddof));
```

[Expr]: /reference/classes/expr