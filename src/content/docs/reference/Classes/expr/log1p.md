---
title: "log1P"
description: |

---
<span class="dart-code"><strong>[Expr] log1P</strong>();</span>


### Implementation
```dart
Expr get log1P => RustLib.instance.api.exprLog1P(
        that: this,
      );
```

[Expr]: /reference/classes/expr/