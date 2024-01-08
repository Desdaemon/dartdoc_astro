---
title: "&lt;"
description: |
   Returns an expression evaluating whether this is less than [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator <</strong>(<span class="nobr">Object? other</span>);</span>

 Returns an expression evaluating whether this is less than [other].
### Implementation
```dart
/// Returns an expression evaluating whether this is less than [other].
  Expr operator <(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.lt, right: other.expr);
```

[Expr]: /reference/classes/expr