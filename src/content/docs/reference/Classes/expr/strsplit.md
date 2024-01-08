---
title: "strSplit"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strSplit</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr">bool <i>inclusive</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr strSplit({required Expr by, bool inclusive = false, dynamic hint}) =>
      RustLib.instance.api.exprStrSplit(
        that: this,
        by: by,
        inclusive: inclusive,
      );
```

[Expr]: /reference/classes/expr