---
title: "slice"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] slice</strong>(<span class="nobr">int offset</span>, <span class="nobr">int length</span>);</span>


### Implementation
```dart
Expr slice(int offset, int length) =>
      Expr.slice(input: this, offset: offset.expr, length: length.expr);
```

[Expr]: /reference/classes/expr/