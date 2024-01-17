---
title: "degrees"
description: |

---
<span class="dart-code"><strong>[Expr] degrees</strong>();</span>


### Implementation
```dart
Expr get degrees => RustLib.instance.api.exprDegrees(
        that: this,
      );
```

[Expr]: /reference/classes/expr/