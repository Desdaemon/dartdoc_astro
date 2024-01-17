---
title: "concat"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] concat</strong>(<span class="nobr">String delimiter</span>, {<span class="nobr">bool <i>ignoreNulls</i></span>});</span>


### Implementation
```dart
Expr concat(String delimiter, {bool ignoreNulls = true}) =>
      expr.strConcat(delimiter: delimiter, ignoreNulls: ignoreNulls);
```

[Expr]: /reference/classes/expr/