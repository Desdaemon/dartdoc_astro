---
title: "isIn"
description: |

---
<span class="dart-code"><strong>[Expr] isIn</strong>();</span>


### Implementation
```dart
Expr get isIn => RustLib.instance.api.exprIsIn(
        that: this,
        other: other,
      );
```

[Expr]: /reference/classes/expr