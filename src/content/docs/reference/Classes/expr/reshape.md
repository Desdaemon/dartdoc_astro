---
title: "reshape"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] reshape</strong>({<span class="nobr"><strong>required</strong> [Int64List] dims</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr reshape({required Int64List dims, dynamic hint}) =>
      RustLib.instance.api.exprReshape(
        that: this,
        dims: dims,
      );
```

[Expr]: /reference/classes/expr
[Int64List]: /reference/classes/int64list