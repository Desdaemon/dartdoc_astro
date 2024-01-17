---
title: "stripSuffix"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] stripSuffix</strong>(<span class="nobr">Object? suffix</span>);</span>


### Implementation
```dart
Expr stripSuffix(Object? suffix) => expr.strStripSuffix(suffix: suffix.expr);
```

[Expr]: /reference/classes/expr/