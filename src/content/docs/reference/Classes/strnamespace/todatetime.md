---
title: "toDatetime"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] toDatetime</strong>({<span class="nobr">[String] <i>format</i></span>, <span class="nobr">[TimeUnit] <i>timeUnit</i></span>, <span class="nobr">[String] <i>timeZone</i></span>});</span>


### Implementation
```dart
Expr toDatetime({
    String? format,
    TimeUnit? timeUnit,
    String? timeZone,
  }) =>
      expr.strToDatetime(
        format: format,
        timeUnit: timeUnit,
        timeZone: timeZone,
      );
```

[Expr]: /reference/classes/expr/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[TimeUnit]: /reference/enums/timeunit/