---
title: "expr"
description: |
   Returns an expression representing this literal value.
---
<span class="dart-code"><strong>[Expr] expr</strong>();</span>

 Returns an expression representing this literal value.
### Implementation
```dart
/// Returns an expression representing this literal value.
  Expr get expr => Expr.literal(this);
```

[Expr]: /reference/classes/expr/