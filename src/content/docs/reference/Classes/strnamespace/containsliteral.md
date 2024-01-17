---
title: "containsLiteral"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] containsLiteral</strong>(<span class="nobr">Object? pat</span>);</span>


### Implementation
```dart
Expr containsLiteral(Object? pat) => expr.strContainsLiteral(pat: pat.expr);
```

[Expr]: /reference/classes/expr/