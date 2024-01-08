---
title: "extractAll"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] extractAll</strong>(<span class="nobr">Object? pat</span>);</span>


### Implementation
```dart
Expr extractAll(Object? pat) => expr.strExtractAll(pat: pat.expr);
```

[Expr]: /reference/classes/expr