---
title: "cols"
description: |

---
<span class="dart-code"><strong>[Expr] cols</strong>(<span class="nobr">Iterable&lt;String&gt; columns</span>);</span>


### Implementation
```dart
Expr cols(Iterable<String> columns) =>
    Expr.columns(columns.toList(growable: false));
```

[Expr]: /reference/classes/expr