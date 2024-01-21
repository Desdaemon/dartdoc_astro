---
title: "rollingMax"
description: |
   TODO: Docs for rolling_max
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] rollingMax</strong>({<span class="nobr">[Duration] <i>windowSize</i></span>, <span class="nobr">[int] <i>minPeriods</i></span>, <span class="nobr">[Float64List] <i>weights</i></span>, <span class="nobr">[bool] <i>center</i></span>, <span class="nobr">[String] <i>by</i></span>, <span class="nobr">[ClosedWindow] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for rolling_max
### Implementation
```dart
/// TODO: Docs for rolling_max
  Expr rollingMax(
          {Duration? windowSize,
          int minPeriods = 1,
          Float64List? weights,
          bool center = false,
          String? by,
          ClosedWindow? closedWindow,
          dynamic hint}) =>
      RustLib.instance.api.exprRollingMax(
        that: this,
        windowSize: windowSize,
        minPeriods: minPeriods,
        weights: weights,
        center: center,
        by: by,
        closedWindow: closedWindow,
      );
```

[Expr]: /reference/classes/expr/
[Duration]: https://api.flutter.dev/flutter/dart-core/Duration-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html
[Float64List]: https://api.flutter.dev/flutter/dart-typed_data/Float64List-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[ClosedWindow]: /reference/enums/closedwindow/