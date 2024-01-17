---
title: "sinh"
description: |

---
<span class="dart-code"><strong>[Expr] sinh</strong>();</span>


### Implementation
```dart
Expr get sinh => RustLib.instance.api.exprSinh(
        that: this,
      );
```

[Expr]: /reference/classes/expr/