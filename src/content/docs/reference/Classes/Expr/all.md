---
title: "all"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] all</strong>({<span class="nobr">bool <i>ignoreNulls</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr all({bool ignoreNulls = false, dynamic hint}) =>
      RustLib.instance.api.exprAll(
        that: this,
        ignoreNulls: ignoreNulls,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #