---
title: "forwardFill"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] forwardFill</strong>({<span class="nobr">int? <i>limit</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr forwardFill({int? limit, dynamic hint}) =>
      RustLib.instance.api.exprForwardFill(
        that: this,
        limit: limit,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #