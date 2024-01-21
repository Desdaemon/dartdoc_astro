---
title: "&amp;"
description: |
   Returns an expression evaluating whether both this and [other] are true.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator &</strong>(<span class="nobr">[Object] other</span>);</span>

 Returns an expression evaluating whether both this and [other] are true.
### Implementation
```dart
/// Returns an expression evaluating whether both this and [other] are true.
  Expr operator &(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.and, right: other.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html