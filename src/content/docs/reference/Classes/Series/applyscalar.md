---
title: "applyScalar"
description: |
   Applies a binary operation onto this series with a scalar value.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] applyScalar</strong>({<span class="nobr"><strong>required</strong> [Operator] op</span>, <span class="nobr"><strong>required</strong> double value</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Applies a binary operation onto this series with a scalar value.

 For logic operators, the new series is a boolean mask. Otherwise,
 it will be a series of numeric values.
### Implementation
```dart
/// Applies a binary operation onto this series with a scalar value.
  ///
  /// For logic operators, the new series is a boolean mask. Otherwise,
  /// it will be a series of numeric values.
  Series applyScalar(
          {required Operator op, required double value, dynamic hint}) =>
      RustLib.instance.api.seriesApplyScalar(
        that: this,
        op: op,
        value: value,
      );
```

[Series]: /reference/classes/series
[Operator]: /reference/enums/operator
[dynamic]: #