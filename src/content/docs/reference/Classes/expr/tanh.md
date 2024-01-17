---
title: "tanh"
description: |

---
<span class="dart-code"><strong>[Expr] tanh</strong>();</span>


### Implementation
```dart
Expr get tanh => RustLib.instance.api.exprTanh(
        that: this,
      );
```

[Expr]: /reference/classes/expr/