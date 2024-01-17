---
title: "not"
description: |

---
<span class="dart-code"><strong>[Expr] not</strong>();</span>


### Implementation
```dart
Expr get not => RustLib.instance.api.exprNot(
        that: this,
      );
```

[Expr]: /reference/classes/expr/