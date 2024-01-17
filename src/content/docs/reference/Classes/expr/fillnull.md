---
title: "fillNull"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] fillNull</strong>({<span class="nobr"><strong>required</strong> [Expr] value</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr fillNull({required Expr value, dynamic hint}) =>
      RustLib.instance.api.exprFillNull(
        that: this,
        value: value,
      );
```

[Expr]: /reference/classes/expr/