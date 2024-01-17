---
title: "arcsin"
description: |

---
<span class="dart-code"><strong>[Expr] arcsin</strong>();</span>


### Implementation
```dart
Expr get arcsin => RustLib.instance.api.exprArcsin(
        that: this,
      );
```

[Expr]: /reference/classes/expr/