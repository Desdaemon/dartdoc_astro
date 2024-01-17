---
title: "&gt;="
description: |
   Returns an expression evaluating whether this is no lesser than [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator >=</strong>(<span class="nobr">Object? other</span>);</span>

 Returns an expression evaluating whether this is no lesser than [other].
### Implementation
```dart
/// Returns an expression evaluating whether this is no lesser than [other].
  Expr operator >=(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.gtEq, right: other.expr);
```

[Expr]: /reference/classes/expr/