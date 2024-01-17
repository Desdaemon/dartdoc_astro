---
title: "expr"
description: |

---
<span class="dart-code"><strong>[Expr] expr</strong>();</span>


### Implementation
```dart
Expr get expr => Expr.literal(_kIsWeb
      ? LiteralValue.dateTime(
          millisecondsSinceEpoch,
          TimeUnit.milliseconds,
        )
      : LiteralValue.dateTime(
          microsecondsSinceEpoch,
          TimeUnit.microseconds,
        ));
```

[Expr]: /reference/classes/expr/