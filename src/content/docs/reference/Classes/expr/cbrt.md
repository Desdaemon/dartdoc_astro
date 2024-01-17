---
title: "cbrt"
description: |

---
<span class="dart-code"><strong>[Expr] cbrt</strong>();</span>


### Implementation
```dart
Expr get cbrt => RustLib.instance.api.exprCbrt(
        that: this,
      );
```

[Expr]: /reference/classes/expr/