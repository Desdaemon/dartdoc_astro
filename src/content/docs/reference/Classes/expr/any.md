---
title: "any"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] any</strong>({<span class="nobr">bool <i>ignoreNulls</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr any({bool ignoreNulls = false, dynamic hint}) =>
      RustLib.instance.api.exprAny(
        that: this,
        ignoreNulls: ignoreNulls,
      );
```

[Expr]: /reference/classes/expr/