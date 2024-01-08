---
title: "tan"
description: |

---
<span class="dart-code"><strong>[Expr] tan</strong>();</span>


### Implementation
```dart
Expr get tan => RustLib.instance.api.exprTan(
        that: this,
      );
```

[Expr]: /reference/classes/expr