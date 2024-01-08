---
title: "splitExact"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] splitExact</strong>({<span class="nobr"><strong>required</strong> Object? by</span>, <span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">bool <i>inclusive</i></span>});</span>


### Implementation
```dart
Expr splitExact({
    required Object? by,
    required int n,
    bool inclusive = false,
  }) =>
      expr.strSplitExact(by: by.expr, n: n, inclusive: inclusive);
```

[Expr]: /reference/classes/expr