---
title: "expr"
description: |

---
<span class="dart-code"><strong>[Expr] expr</strong>();</span>


### Implementation
```dart
Expr get expr {
    var root = _otherwise;
    for (final (cond, truthy) in _chains.reversed) {
      root = Expr.ternary(predicate: cond, truthy: truthy, falsy: root);
    }
    return root;
  }
```

[Expr]: /reference/classes/expr