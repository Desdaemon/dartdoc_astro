---
title: "rollingMin"
description: |
   TODO: Docs for rolling_min
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] rollingMin</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for rolling_min
### Implementation
```dart
/// TODO: Docs for rolling_min
  Expr rollingMin(
          {Duration? windowSize,
          int minPeriods = 1,
          Float64List? weights,
          bool center = false,
          String? by,
          ClosedWindow? closedWindow,
          dynamic hint}) =>
      RustLib.instance.api.exprRollingMin(
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
[ClosedWindow?]: /reference/enums/closedwindow/