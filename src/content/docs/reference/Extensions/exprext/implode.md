---
title: "implode"
description: |

---
<span class="dart-code"><strong>[Expr] implode</strong>();</span>


### Implementation
```dart
Expr get implode => Expr.agg(AggExpr.implode(this));
```

[Expr]: /reference/classes/expr/