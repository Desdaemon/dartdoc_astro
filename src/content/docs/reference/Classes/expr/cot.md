---
title: "cot"
description: |
   Calculate the cotangent of this expression.
---
<span class="dart-code"><strong>[Expr] cot</strong>();</span>

 Calculate the cotangent of this expression.
### Implementation
```dart
/// Calculate the cotangent of this expression.
  Expr get cot => RustLib.instance.api.exprCot(
        that: this,
      );
```

[Expr]: /reference/classes/expr/