---
title: "product"
description: |

---
<span class="dart-code"><strong>[Expr] product</strong>();</span>


### Implementation
```dart
Expr get product => RustLib.instance.api.exprProduct(
        that: this,
      );
```

[Expr]: /reference/classes/expr