---
title: "ceil"
description: |

---
<span class="dart-code"><strong>[Expr] ceil</strong>();</span>


### Implementation
```dart
Expr get ceil => RustLib.instance.api.exprCeil(
        that: this,
      );
```

[Expr]: /reference/classes/expr