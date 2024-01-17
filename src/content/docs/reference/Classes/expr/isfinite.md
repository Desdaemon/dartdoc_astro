---
title: "isFinite"
description: |

---
<span class="dart-code"><strong>[Expr] isFinite</strong>();</span>


### Implementation
```dart
Expr get isFinite => RustLib.instance.api.exprIsFinite(
        that: this,
      );
```

[Expr]: /reference/classes/expr/