---
title: "cumSum"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] cumSum</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr cumSum({bool reverse = false, dynamic hint}) =>
      RustLib.instance.api.exprCumSum(
        that: this,
        reverse: reverse,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #