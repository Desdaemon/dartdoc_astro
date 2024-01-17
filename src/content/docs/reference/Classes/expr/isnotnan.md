---
title: "isNotNan"
description: |

---
<span class="dart-code"><strong>[Expr] isNotNan</strong>();</span>


### Implementation
```dart
Expr get isNotNan => RustLib.instance.api.exprIsNotNan(
        that: this,
      );
```

[Expr]: /reference/classes/expr/