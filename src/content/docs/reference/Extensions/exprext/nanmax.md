---
title: "nanMax"
description: |

---
<span class="dart-code"><strong>[Expr] nanMax</strong>();</span>


### Implementation
```dart
Expr get nanMax => Expr.agg(AggExpr.max(input: this, propagateNans: true));
```

[Expr]: /reference/classes/expr