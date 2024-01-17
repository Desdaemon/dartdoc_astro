---
title: "cumMin"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] cumMin</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr cumMin({bool reverse = false, dynamic hint}) =>
      RustLib.instance.api.exprCumMin(
        that: this,
        reverse: reverse,
      );
```

[Expr]: /reference/classes/expr/