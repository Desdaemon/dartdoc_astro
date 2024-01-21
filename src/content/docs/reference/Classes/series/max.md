---
title: "max"
description: |
   Returns the maximum value of this series' values.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[double] max</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the maximum value of this series' values.

 Returns null if one of the values are also null.
### Implementation
```dart
/// Returns the maximum value of this series' values.
  ///
  /// Returns null if one of the values are also null.
  double? max({dynamic hint}) => RustLib.instance.api.seriesMax(
        that: this,
      );
```

[double]: https://api.flutter.dev/flutter/dart-core/double-class.html