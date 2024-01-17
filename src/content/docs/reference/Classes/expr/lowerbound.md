---
title: "lowerBound"
description: |

---
<span class="dart-code"><strong>[Expr] lowerBound</strong>();</span>


### Implementation
```dart
Expr get lowerBound => RustLib.instance.api.exprLowerBound(
        that: this,
      );
```

[Expr]: /reference/classes/expr/