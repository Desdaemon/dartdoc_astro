---
title: "shiftAndFill"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] shiftAndFill</strong>({<span class="nobr"><strong>required</strong> [Expr] n</span>, <span class="nobr"><strong>required</strong> [Expr] fillValue</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr shiftAndFill({required Expr n, required Expr fillValue, dynamic hint}) =>
      RustLib.instance.api.exprShiftAndFill(
        that: this,
        n: n,
        fillValue: fillValue,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #