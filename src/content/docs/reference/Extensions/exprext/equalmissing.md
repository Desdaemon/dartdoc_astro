---
title: "equalMissing"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] equalMissing</strong>(<span class="nobr">Object? other</span>);</span>


### Implementation
```dart
Expr equalMissing(Object? other) =>
      Expr.binaryExpr(left: this, op: Operator.eqValidity, right: other.expr);
```

[Expr]: /reference/classes/expr/