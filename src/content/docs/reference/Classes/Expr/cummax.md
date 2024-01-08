---
title: "cumMax"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] cumMax</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr cumMax({bool reverse = false, dynamic hint}) =>
      RustLib.instance.api.exprCumMax(
        that: this,
        reverse: reverse,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #