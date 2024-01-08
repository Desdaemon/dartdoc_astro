---
title: "rollingMax"
description: |
   TODO: Docs for rolling_max
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] rollingMax</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for rolling_max
### Implementation
```dart
/// TODO: Docs for rolling_max
  Series rollingMax(
          {Duration? windowSize,
          int minPeriods = 1,
          Float64List? weights,
          bool center = false,
          Int64List? by,
          ClosedWindow? closedWindow,
          TimeUnit? timeUnit,
          String? timezone,
          dynamic hint}) =>
      RustLib.instance.api.seriesRollingMax(
        that: this,
        windowSize: windowSize,
        minPeriods: minPeriods,
        weights: weights,
        center: center,
        by: by,
        closedWindow: closedWindow,
        timeUnit: timeUnit,
        timezone: timezone,
      );
```

[Series]: /reference/classes/series
[Int64List?]: /reference/classes/int64list
[ClosedWindow?]: /reference/enums/closedwindow
[TimeUnit?]: /reference/enums/timeunit