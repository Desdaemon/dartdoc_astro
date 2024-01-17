---
title: "contains"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] contains</strong>(<span class="nobr">Object? pat</span>, {<span class="nobr">bool <i>strict</i></span>});</span>


### Implementation
```dart
Expr contains(Object? pat, {bool strict = true}) =>
      expr.strContains(pat: pat.expr, strict: strict);
```

[Expr]: /reference/classes/expr/