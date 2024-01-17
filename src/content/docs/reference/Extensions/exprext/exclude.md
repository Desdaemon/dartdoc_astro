---
title: "exclude"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] exclude</strong>(<span class="nobr">Iterable&lt;String&gt; columns</span>);</span>


### Implementation
```dart
Expr exclude(Iterable<String> columns) =>
      Expr.exclude(this, columns.map(Excluded.name).toList(growable: false));
```

[Expr]: /reference/classes/expr/