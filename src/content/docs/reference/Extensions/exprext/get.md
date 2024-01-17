---
title: "get"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] get</strong>(<span class="nobr">Object? idx</span>);</span>


### Implementation
```dart
Expr get(Object? idx) =>
      Expr.gather(expr: this, idx: idx.expr, returnsScalar: true);
```

[Expr]: /reference/classes/expr/