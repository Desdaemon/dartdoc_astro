---
title: "isNull"
description: |

---
<span class="dart-code"><strong>[Expr] isNull</strong>();</span>


### Implementation
```dart
Expr get isNull => RustLib.instance.api.exprIsNull(
        that: this,
      );
```

[Expr]: /reference/classes/expr/