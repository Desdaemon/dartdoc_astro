---
title: "contains"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] contains</strong>(<span class="nobr">[Object] item</span>);</span>


### Implementation
```dart
Expr contains(Object? item) => expr.listContains(other: item.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html