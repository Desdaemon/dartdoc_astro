---
title: "endsWith"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] endsWith</strong>(<span class="nobr">Object? pat</span>);</span>


### Implementation
```dart
Expr endsWith(Object? pat) => expr.strEndsWith(pat: pat.expr);
```

[Expr]: /reference/classes/expr/