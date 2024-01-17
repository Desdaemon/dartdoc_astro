---
title: "&gt;"
description: |
   Returns an expression evaluating whether this is greater than [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator ></strong>(<span class="nobr">Object? other</span>);</span>

 Returns an expression evaluating whether this is greater than [other].
### Implementation
```dart
/// Returns an expression evaluating whether this is greater than [other].
  Expr operator >(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.gt, right: other.expr);
```

[Expr]: /reference/classes/expr/