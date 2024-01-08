---
title: "median"
description: |
   Calculates the [median](https://en.wikipedia.org/wiki/Median) of this series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>double? median</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Calculates the [median](https://en.wikipedia.org/wiki/Median) of this series.
### Implementation
```dart
/// Calculates the [median](https://en.wikipedia.org/wiki/Median) of this series.
  double? median({dynamic hint}) => RustLib.instance.api.seriesMedian(
        that: this,
      );
```

