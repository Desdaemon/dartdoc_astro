---
title: "unique"
description: |

---
<span class="dart-code"><strong>[Expr] unique</strong>();</span>


### Implementation
```dart
Expr get unique => RustLib.instance.api.exprUnique(
        that: this,
      );
```

[Expr]: /reference/classes/expr