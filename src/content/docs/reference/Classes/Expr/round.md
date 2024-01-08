---
title: "round"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] round</strong>({<span class="nobr"><strong>required</strong> int decimals</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr round({required int decimals, dynamic hint}) =>
      RustLib.instance.api.exprRound(
        that: this,
        decimals: decimals,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #