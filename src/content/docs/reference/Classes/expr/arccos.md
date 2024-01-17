---
title: "arccos"
description: |

---
<span class="dart-code"><strong>[Expr] arccos</strong>();</span>


### Implementation
```dart
Expr get arccos => RustLib.instance.api.exprArccos(
        that: this,
      );
```

[Expr]: /reference/classes/expr/