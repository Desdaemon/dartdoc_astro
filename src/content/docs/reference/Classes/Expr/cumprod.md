---
title: "cumProd"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] cumProd</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr cumProd({bool reverse = false, dynamic hint}) =>
      RustLib.instance.api.exprCumProd(
        that: this,
        reverse: reverse,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #