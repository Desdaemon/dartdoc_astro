---
title: "floor"
description: |

---
<span class="dart-code"><strong>[Expr] floor</strong>();</span>


### Implementation
```dart
Expr get floor => RustLib.instance.api.exprFloor(
        that: this,
      );
```

[Expr]: /reference/classes/expr/