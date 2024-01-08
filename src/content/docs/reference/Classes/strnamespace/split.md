---
title: "split"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] split</strong>({<span class="nobr"><strong>required</strong> Object? by</span>, <span class="nobr">bool <i>inclusive</i></span>});</span>


### Implementation
```dart
Expr split({
    required Object? by,
    bool inclusive = false,
  }) =>
      expr.strSplit(by: by.expr, inclusive: inclusive);
```

[Expr]: /reference/classes/expr