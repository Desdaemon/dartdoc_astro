---
title: "isNan"
description: |

---
<span class="dart-code"><strong>[Expr] isNan</strong>();</span>


### Implementation
```dart
Expr get isNan => RustLib.instance.api.exprIsNan(
        that: this,
      );
```

[Expr]: /reference/classes/expr/