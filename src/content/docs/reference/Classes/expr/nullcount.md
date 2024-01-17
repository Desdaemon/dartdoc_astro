---
title: "nullCount"
description: |

---
<span class="dart-code"><strong>[Expr] nullCount</strong>();</span>


### Implementation
```dart
Expr get nullCount => RustLib.instance.api.exprNullCount(
        that: this,
      );
```

[Expr]: /reference/classes/expr/