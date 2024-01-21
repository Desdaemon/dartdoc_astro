---
title: "get"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] get</strong>(<span class="nobr">[Object] index</span>);</span>


### Implementation
```dart
Expr get(Object? index) => expr.listGet(index: index.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html