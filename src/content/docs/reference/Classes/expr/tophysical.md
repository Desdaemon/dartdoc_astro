---
title: "toPhysical"
description: |

---
<span class="dart-code"><strong>[Expr] toPhysical</strong>();</span>


### Implementation
```dart
Expr get toPhysical => RustLib.instance.api.exprToPhysical(
        that: this,
      );
```

[Expr]: /reference/classes/expr/