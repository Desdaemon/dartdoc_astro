---
title: "reverse"
description: |

---
<span class="dart-code"><strong>[Expr] reverse</strong>();</span>


### Implementation
```dart
Expr get reverse => RustLib.instance.api.exprReverse(
        that: this,
      );
```

[Expr]: /reference/classes/expr