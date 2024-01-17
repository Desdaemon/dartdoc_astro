---
title: "listUnique"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listUnique</strong>({<span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr listUnique({bool maintainOrder = false, dynamic hint}) =>
      RustLib.instance.api.exprListUnique(
        that: this,
        maintainOrder: maintainOrder,
      );
```

[Expr]: /reference/classes/expr/