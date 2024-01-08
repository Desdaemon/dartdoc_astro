---
title: "nUnique"
description: |

---
<span class="dart-code"><strong>[Expr] nUnique</strong>();</span>


### Implementation
```dart
Expr get nUnique => Expr.agg(AggExpr.nUnique(this));
```

[Expr]: /reference/classes/expr