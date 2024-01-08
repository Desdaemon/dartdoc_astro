---
title: "div"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] div</strong>({<span class="nobr"><strong>required</strong> [Expr] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr div({required Expr other, dynamic hint}) => RustLib.instance.api.exprDiv(
        that: this,
        other: other,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #