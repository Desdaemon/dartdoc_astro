---
title: "arctan2"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] arctan2</strong>({<span class="nobr"><strong>required</strong> [Expr] x</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr arctan2({required Expr x, dynamic hint}) =>
      RustLib.instance.api.exprArctan2(
        that: this,
        x: x,
      );
```

[Expr]: /reference/classes/expr