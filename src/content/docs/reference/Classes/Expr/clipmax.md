---
title: "clipMax"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] clipMax</strong>({<span class="nobr"><strong>required</strong> [Expr] max</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr clipMax({required Expr max, dynamic hint}) =>
      RustLib.instance.api.exprClipMax(
        that: this,
        max: max,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #