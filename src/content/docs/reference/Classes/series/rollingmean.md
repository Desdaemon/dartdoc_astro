---
title: "rollingMean"
description: |
   TODO: Docs for rolling_mean
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] rollingMean</strong>({<span class="nobr">[Duration] <i>windowSize</i></span>, <span class="nobr">[int] <i>minPeriods</i></span>, <span class="nobr">[Float64List] <i>weights</i></span>, <span class="nobr">[bool] <i>center</i></span>, <span class="nobr">[Int64List] <i>by</i></span>, <span class="nobr">[ClosedWindow] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit] <i>timeUnit</i></span>, <span class="nobr">[String] <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for rolling_mean
### Implementation
```dart
/// TODO: Docs for rolling_mean
  Series rollingMean(
          {Duration? windowSize,
          int minPeriods = 1,
          Float64List? weights,
          bool center = false,
          Int64List? by,
          ClosedWindow? closedWindow,
          TimeUnit? timeUnit,
          String? timezone,
          dynamic hint}) =>
      RustLib.instance.api.seriesRollingMean(
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

[Series]: /reference/classes/series/
[Duration]: https://api.flutter.dev/flutter/dart-core/Duration-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html
[Float64List]: https://api.flutter.dev/flutter/dart-typed_data/Float64List-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[Int64List]: /reference/classes/int64list/
[ClosedWindow]: /reference/enums/closedwindow/
[TimeUnit]: /reference/enums/timeunit/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html