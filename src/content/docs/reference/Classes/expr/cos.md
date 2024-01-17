---
title: "cos"
description: |

---
<span class="dart-code"><strong>[Expr] cos</strong>();</span>


### Implementation
```dart
Expr get cos => RustLib.instance.api.exprCos(
        that: this,
      );
```

[Expr]: /reference/classes/expr/