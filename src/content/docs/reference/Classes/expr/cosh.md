---
title: "cosh"
description: |

---
<span class="dart-code"><strong>[Expr] cosh</strong>();</span>


### Implementation
```dart
Expr get cosh => RustLib.instance.api.exprCosh(
        that: this,
      );
```

[Expr]: /reference/classes/expr/