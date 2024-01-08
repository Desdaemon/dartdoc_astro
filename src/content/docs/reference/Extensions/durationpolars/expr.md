---
title: "expr"
description: |

---
<span class="dart-code"><strong>[Expr] expr</strong>();</span>


### Implementation
```dart
Expr get expr => Expr.literal(_kIsWeb
      ? LiteralValue.duration(
          inMilliseconds,
          TimeUnit.milliseconds,
        )
      : LiteralValue.duration(
          inMicroseconds,
          TimeUnit.microseconds,
        ));
```

[Expr]: /reference/classes/expr