---
title: "%"
description: |
   Performs a modulo operation on this and [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator %</strong>(<span class="nobr">[Object] other</span>);</span>

 Performs a modulo operation on this and [other].
### Implementation
```dart
/// Performs a modulo operation on this and [other].
  Expr operator %(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.modulus, right: other.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html