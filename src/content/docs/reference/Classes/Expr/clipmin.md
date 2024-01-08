---
title: "clipMin"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] clipMin</strong>({<span class="nobr"><strong>required</strong> [Expr] min</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr clipMin({required Expr min, dynamic hint}) =>
      RustLib.instance.api.exprClipMin(
        that: this,
        min: min,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #