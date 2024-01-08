---
title: "sum"
description: |
   Sums all non-null rows in this series to produce a result.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>double? sum</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Sums all non-null rows in this series to produce a result.

 Returns null if the series only contains null values.
### Implementation
```dart
/// Sums all non-null rows in this series to produce a result.
  ///
  /// Returns null if the series only contains null values.
  double? sum({dynamic hint}) => RustLib.instance.api.seriesSum(
        that: this,
      );
```

