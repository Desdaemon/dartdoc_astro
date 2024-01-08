---
title: "uniqueStable"
description: |

---
<span class="dart-code"><strong>[Expr] uniqueStable</strong>();</span>


### Implementation
```dart
Expr get uniqueStable => RustLib.instance.api.exprUniqueStable(
        that: this,
      );
```

[Expr]: /reference/classes/expr