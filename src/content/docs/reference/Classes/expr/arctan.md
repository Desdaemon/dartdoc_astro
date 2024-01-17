---
title: "arctan"
description: |

---
<span class="dart-code"><strong>[Expr] arctan</strong>();</span>


### Implementation
```dart
Expr get arctan => RustLib.instance.api.exprArctan(
        that: this,
      );
```

[Expr]: /reference/classes/expr/