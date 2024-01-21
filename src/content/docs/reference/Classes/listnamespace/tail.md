---
title: "tail"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] tail</strong>([<i><span class="nobr">[int] n</span></i>]);</span>


### Implementation
```dart
Expr tail([int n = 10]) => expr.listTail(n: n.expr);
```

[Expr]: /reference/classes/expr/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html