---
title: "backwardFill"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] backwardFill</strong>({<span class="nobr">int? <i>limit</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr backwardFill({int? limit, dynamic hint}) =>
      RustLib.instance.api.exprBackwardFill(
        that: this,
        limit: limit,
      );
```

[Expr]: /reference/classes/expr