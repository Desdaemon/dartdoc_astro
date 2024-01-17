---
title: "shrinkDtype"
description: |

---
<span class="dart-code"><strong>[Expr] shrinkDtype</strong>();</span>


### Implementation
```dart
Expr get shrinkDtype => RustLib.instance.api.exprShrinkDtype(
        that: this,
      );
```

[Expr]: /reference/classes/expr/