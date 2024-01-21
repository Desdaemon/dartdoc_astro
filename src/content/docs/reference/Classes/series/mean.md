---
title: "mean"
description: |
   Calculates the mean (average) of this series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[double] mean</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Calculates the mean (average) of this series.
### Implementation
```dart
/// Calculates the mean (average) of this series.
  double? mean({dynamic hint}) => RustLib.instance.api.seriesMean(
        that: this,
      );
```

[double]: https://api.flutter.dev/flutter/dart-core/double-class.html