---
title: "valueCounts"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] valueCounts</strong>({<span class="nobr">bool <i>sort</i></span>, <span class="nobr">bool <i>parallel</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr valueCounts({bool sort = false, bool parallel = true, dynamic hint}) =>
      RustLib.instance.api.exprValueCounts(
        that: this,
        sort: sort,
        parallel: parallel,
      );
```

[Expr]: /reference/classes/expr