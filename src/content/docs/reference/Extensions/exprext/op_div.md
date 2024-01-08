---
title: "/"
description: |
   Returns an expression representing the division of this and [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator /</strong>(<span class="nobr">Object? other</span>);</span>

 Returns an expression representing the division of this and [other].
### Implementation
```dart
/// Returns an expression representing the division of this and [other].
  Expr operator /(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.divide, right: other.expr);
```

[Expr]: /reference/classes/expr