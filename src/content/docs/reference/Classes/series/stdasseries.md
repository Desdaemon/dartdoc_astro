---
title: "stdAsSeries"
description: |
   Calculates the standard deviation of this series with the specified degree of freedom.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] stdAsSeries</strong>({<span class="nobr"><strong>required</strong> int ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Calculates the standard deviation of this series with the specified degree of freedom.
### Implementation
```dart
/// Calculates the standard deviation of this series with the specified degree of freedom.
  Series stdAsSeries({required int ddof, dynamic hint}) =>
      RustLib.instance.api.seriesStdAsSeries(
        that: this,
        ddof: ddof,
      );
```

[Series]: /reference/classes/series/