---
title: "min"
description: |
   Returns the minimum value of this series' values.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>double? min</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the minimum value of this series' values.

 Returns null if one of the values are also null.
### Implementation
```dart
/// Returns the minimum value of this series' values.
  ///
  /// Returns null if one of the values are also null.
  double? min({dynamic hint}) => RustLib.instance.api.seriesMin(
        that: this,
      );
```

[dynamic]: #