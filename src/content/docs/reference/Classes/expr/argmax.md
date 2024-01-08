---
title: "argMax"
description: |

---
<span class="dart-code"><strong>[Expr] argMax</strong>();</span>


### Implementation
```dart
Expr get argMax => RustLib.instance.api.exprArgMax(
        that: this,
      );
```

[Expr]: /reference/classes/expr