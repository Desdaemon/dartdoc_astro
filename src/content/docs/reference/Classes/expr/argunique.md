---
title: "argUnique"
description: |

---
<span class="dart-code"><strong>[Expr] argUnique</strong>();</span>


### Implementation
```dart
Expr get argUnique => RustLib.instance.api.exprArgUnique(
        that: this,
      );
```

[Expr]: /reference/classes/expr