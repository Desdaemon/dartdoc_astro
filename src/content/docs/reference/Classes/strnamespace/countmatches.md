---
title: "countMatches"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] countMatches</strong>(<span class="nobr">Object? pat</span>, {<span class="nobr">bool <i>literal</i></span>});</span>


### Implementation
```dart
Expr countMatches(Object? pat, {bool literal = false}) =>
      expr.strCountMatches(pat: pat.expr, literal: literal);
```

[Expr]: /reference/classes/expr/