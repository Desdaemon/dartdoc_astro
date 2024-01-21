---
title: "unique"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] unique</strong>({<span class="nobr">[bool] <i>maintainOrder</i></span>});</span>


### Implementation
```dart
Expr unique({bool maintainOrder = false}) =>
      expr.listUnique(maintainOrder: maintainOrder);
```

[Expr]: /reference/classes/expr/
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html