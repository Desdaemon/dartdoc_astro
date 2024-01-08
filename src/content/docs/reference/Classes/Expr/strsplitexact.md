---
title: "strSplitExact"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strSplitExact</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">bool <i>inclusive</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr strSplitExact(
          {required Expr by,
          required int n,
          bool inclusive = false,
          dynamic hint}) =>
      RustLib.instance.api.exprStrSplitExact(
        that: this,
        by: by,
        n: n,
        inclusive: inclusive,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #