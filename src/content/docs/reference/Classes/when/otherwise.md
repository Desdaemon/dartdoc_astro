---
title: "otherwise"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] otherwise</strong>(<span class="nobr">[Object] otherwise</span>);</span>


### Implementation
```dart
Expr otherwise(Object? otherwise) {
    _otherwise = otherwise.expr;
    return expr;
  }
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html