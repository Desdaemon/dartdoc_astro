---
title: "radians"
description: |

---
<span class="dart-code"><strong>[Expr] radians</strong>();</span>


### Implementation
```dart
Expr get radians => RustLib.instance.api.exprRadians(
        that: this,
      );
```

[Expr]: /reference/classes/expr/