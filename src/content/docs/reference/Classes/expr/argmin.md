---
title: "argMin"
description: |

---
<span class="dart-code"><strong>[Expr] argMin</strong>();</span>


### Implementation
```dart
Expr get argMin => RustLib.instance.api.exprArgMin(
        that: this,
      );
```

[Expr]: /reference/classes/expr/