---
title: "isNotNull"
description: |

---
<span class="dart-code"><strong>[Expr] isNotNull</strong>();</span>


### Implementation
```dart
Expr get isNotNull => RustLib.instance.api.exprIsNotNull(
        that: this,
      );
```

[Expr]: /reference/classes/expr/