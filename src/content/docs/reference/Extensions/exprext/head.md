---
title: "head"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] head</strong>({<span class="nobr">int <i>length</i></span>});</span>


### Implementation
```dart
Expr head({int length = 10}) => Expr.slice(
      input: this,
      offset: const Expr.literal(LiteralValue.int64(0)),
      length: length.expr);
```

[Expr]: /reference/classes/expr/