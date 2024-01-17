---
title: "expr"
description: |

---
<span class="dart-code"><strong>[Expr] expr</strong>();</span>


### Implementation
```dart
Expr get expr => Expr.literal(this
      ? const LiteralValue.boolean(true)
      : const LiteralValue.boolean(false));
```

[Expr]: /reference/classes/expr/