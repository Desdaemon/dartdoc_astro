---
title: "shift"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] shift</strong>({<span class="nobr"><strong>required</strong> [Expr] n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr shift({required Expr n, dynamic hint}) => RustLib.instance.api.exprShift(
        that: this,
        n: n,
      );
```

[Expr]: /reference/classes/expr/