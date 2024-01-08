---
title: "upperBound"
description: |

---
<span class="dart-code"><strong>[Expr] upperBound</strong>();</span>


### Implementation
```dart
Expr get upperBound => RustLib.instance.api.exprUpperBound(
        that: this,
      );
```

[Expr]: /reference/classes/expr