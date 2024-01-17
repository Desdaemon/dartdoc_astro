---
title: "|"
description: |
   Returns an expression evaluating whether either this or [other] is true.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator |</strong>(<span class="nobr">Object? other</span>);</span>

 Returns an expression evaluating whether either this or [other] is true.
### Implementation
```dart
/// Returns an expression evaluating whether either this or [other] is true.
  Expr operator |(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.or, right: other.expr);
```

[Expr]: /reference/classes/expr/