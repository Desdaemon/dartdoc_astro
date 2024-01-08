---
title: "abs"
description: |
   Similar to [gather] but allows for scalars.
---
<span class="dart-code"><strong>[Expr] abs</strong>();</span>

 Similar to [gather] but allows for scalars.
### Implementation
```dart
/// Similar to [gather] but allows for scalars.
  Expr get abs => RustLib.instance.api.exprAbs(
        that: this,
      );
```

[Expr]: /reference/classes/expr