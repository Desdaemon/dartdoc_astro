---
title: "strToDatetime"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strToDatetime</strong>({<span class="nobr">[TimeUnit] <i>timeUnit</i></span>, <span class="nobr">[String] <i>timeZone</i></span>, <span class="nobr">[String] <i>format</i></span>, <span class="nobr">[bool] <i>strict</i></span>, <span class="nobr">[bool] <i>exact</i></span>, <span class="nobr">[bool] <i>cache</i></span>, <span class="nobr">[Ambiguous] <i>ambiguous</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr strToDatetime(
          {TimeUnit? timeUnit,
          String? timeZone,
          String? format,
          bool strict = true,
          bool exact = true,
          bool cache = true,
          Ambiguous ambiguous = Ambiguous.raise,
          dynamic hint}) =>
      RustLib.instance.api.exprStrToDatetime(
        that: this,
        timeUnit: timeUnit,
        timeZone: timeZone,
        format: format,
        strict: strict,
        exact: exact,
        cache: cache,
        ambiguous: ambiguous,
      );
```

[Expr]: /reference/classes/expr/
[TimeUnit]: /reference/enums/timeunit/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[Ambiguous]: /reference/enums/ambiguous/