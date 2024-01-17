---
title: "sin"
description: |

---
<span class="dart-code"><strong>[Expr] sin</strong>();</span>


### Implementation
```dart
Expr get sin => RustLib.instance.api.exprSin(
        that: this,
      );
```

[Expr]: /reference/classes/expr/