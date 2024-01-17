---
title: "slice"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] slice</strong>(<span class="nobr">Object? offset</span>, <span class="nobr">Object? length</span>);</span>


### Implementation
```dart
Expr slice(Object? offset, Object? length) =>
      expr.listSlice(offset: offset.expr, length: length.expr);
```

[Expr]: /reference/classes/expr/