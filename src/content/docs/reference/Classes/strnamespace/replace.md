---
title: "replace"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] replace</strong>(<span class="nobr">Object? pat</span>, <span class="nobr">Object? val</span>, {<span class="nobr">bool <i>literal</i></span>});</span>


### Implementation
```dart
Expr replace(Object? pat, Object? val, {bool literal = false}) =>
      expr.strReplace(pat: pat.expr, val: val.expr, literal: literal);
```

[Expr]: /reference/classes/expr/