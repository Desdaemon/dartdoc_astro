---
title: "fillNan"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] fillNan</strong>({<span class="nobr"><strong>required</strong> [Expr] value</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr fillNan({required Expr value, dynamic hint}) =>
      RustLib.instance.api.exprFillNan(
        that: this,
        value: value,
      );
```

[Expr]: /reference/classes/expr