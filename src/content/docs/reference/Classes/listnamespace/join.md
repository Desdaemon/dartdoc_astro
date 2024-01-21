---
title: "join"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] join</strong>(<span class="nobr">[Object] separator</span>);</span>


### Implementation
```dart
Expr join(Object? separator) => expr.listJoin(separator: separator.expr);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html