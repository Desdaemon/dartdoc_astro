---
title: "sqrt"
description: |

---
<span class="dart-code"><strong>[Expr] sqrt</strong>();</span>


### Implementation
```dart
Expr get sqrt => RustLib.instance.api.exprSqrt(
        that: this,
      );
```

[Expr]: /reference/classes/expr