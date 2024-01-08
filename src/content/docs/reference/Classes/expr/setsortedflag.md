---
title: "setSortedFlag"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] setSortedFlag</strong>({<span class="nobr"><strong>required</strong> [IsSorted] sorted</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr setSortedFlag({required IsSorted sorted, dynamic hint}) =>
      RustLib.instance.api.exprSetSortedFlag(
        that: this,
        sorted: sorted,
      );
```

[Expr]: /reference/classes/expr
[IsSorted]: /reference/enums/issorted