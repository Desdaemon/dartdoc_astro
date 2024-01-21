---
title: "gather"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] gather</strong>(<span class="nobr">[Object] idx</span>);</span>


### Implementation
```dart
Expr gather(Object? idx) =>
      Expr.gather(expr: this, idx: idx.expr, returnsScalar: false);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html