---
title: "stripPrefix"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] stripPrefix</strong>(<span class="nobr">Object? prefix</span>);</span>


### Implementation
```dart
Expr stripPrefix(Object? prefix) => expr.strStripPrefix(prefix: prefix.expr);
```

[Expr]: /reference/classes/expr/