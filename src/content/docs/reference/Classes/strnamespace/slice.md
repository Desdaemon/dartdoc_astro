---
title: "slice"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] slice</strong>(<span class="nobr">int start</span>, <span class="nobr">int? length</span>);</span>


### Implementation
```dart
Expr slice(int start, int? length) =>
      expr.strSlice(start: start, length: length);
```

[Expr]: /reference/classes/expr/