---
title: "clip"
description: |

---
<span class="dart-code"><strong>[Expr] clip</strong>();</span>


### Implementation
```dart
Expr get clip => RustLib.instance.api.exprClip(
        that: this,
        min: min,
        max: max,
      );
```

[Expr]: /reference/classes/expr/