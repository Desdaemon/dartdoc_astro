---
title: "~/"
description: |
   Returns an expression representing the integral division of this and [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator ~/</strong>(<span class="nobr">[Object] other</span>);</span>

 Returns an expression representing the integral division of this and [other].
### Implementation
```dart
/// Returns an expression representing the integral division of this and [other].
  Expr operator ~/(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.floorDivide, right: other.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html