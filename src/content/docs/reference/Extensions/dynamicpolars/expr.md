---
title: "expr"
description: |

---
<span class="dart-code"><strong>[Expr] expr</strong>();</span>


### Implementation
```dart
Expr get expr => switch (this) {
        int value => value.expr,
        double value => value.expr,
        String value => value.expr,
        bool value => value.expr,
        DateTime value => value.expr,
        Duration value => value.expr,
        Expr expr => expr,
        When ternary => ternary.expr,
        StrNamespace ns => ns.expr,
        LiteralValue lit => Expr.literal(lit),
        null => const Expr.literal(LiteralValue.Null()),
        _ => '$this'.expr,
      };
```

[Expr]: /reference/classes/expr