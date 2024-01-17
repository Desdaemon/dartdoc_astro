---
title: "nanMin"
description: |

---
<span class="dart-code"><strong>[Expr] nanMin</strong>();</span>


### Implementation
```dart
Expr get nanMin => Expr.agg(AggExpr.min(input: this, propagateNans: true));
```

[Expr]: /reference/classes/expr/