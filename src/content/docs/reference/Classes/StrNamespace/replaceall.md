---
title: "replaceAll"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] replaceAll</strong>(<span class="nobr">Object? pat</span>, <span class="nobr">Object? val</span>, {<span class="nobr">bool <i>literal</i></span>});</span>


### Implementation
```dart
Expr replaceAll(Object? pat, Object? val, {bool literal = false}) =>
      expr.strReplaceAll(pat: pat.expr, val: val.expr, literal: literal);
```

[Expr]: /reference/classes/expr