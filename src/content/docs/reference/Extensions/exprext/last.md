---
title: "last"
description: |

---
<span class="dart-code"><strong>[Expr] last</strong>();</span>


### Implementation
```dart
Expr get last => Expr.agg(AggExpr.last(this));
```

[Expr]: /reference/classes/expr