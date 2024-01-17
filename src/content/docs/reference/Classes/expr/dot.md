---
title: "dot"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] dot</strong>({<span class="nobr"><strong>required</strong> [Expr] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr dot({required Expr other, dynamic hint}) => RustLib.instance.api.exprDot(
        that: this,
        other: other,
      );
```

[Expr]: /reference/classes/expr/