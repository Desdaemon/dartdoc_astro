---
title: "notEqualMissing"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] notEqualMissing</strong>(<span class="nobr">Object? other</span>);</span>


### Implementation
```dart
Expr notEqualMissing(Object? other) => Expr.binaryExpr(
      left: this, op: Operator.notEqValidity, right: other.expr);
```

[Expr]: /reference/classes/expr