---
title: "cumCount"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] cumCount</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr cumCount({bool reverse = false, dynamic hint}) =>
      RustLib.instance.api.exprCumCount(
        that: this,
        reverse: reverse,
      );
```

[Expr]: /reference/classes/expr