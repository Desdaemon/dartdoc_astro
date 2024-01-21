---
title: "shift"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] shift</strong>(<span class="nobr">[Object] periods</span>);</span>


### Implementation
```dart
Expr shift(Object? periods) => expr.listShift(periods: periods.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html