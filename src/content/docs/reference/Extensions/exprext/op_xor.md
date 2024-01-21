---
title: "^"
description: |
   Returns an expression evaluating whether at most one of this and [other] is true,
   i.e. whether this and [other] are not equal.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] operator ^</strong>(<span class="nobr">[Object] other</span>);</span>

 Returns an expression evaluating whether at most one of this and [other] is true,
 i.e. whether this and [other] are not equal.
### Implementation
```dart
/// Returns an expression evaluating whether at most one of this and [other] is true,
  /// i.e. whether this and [other] are not equal.
  Expr operator ^(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.xor, right: other.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html