---
title: "varAsSeries"
description: |
   Calculates the variance of this series with the specified degree of freedom.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] varAsSeries</strong>({<span class="nobr"><strong>required</strong> [int] ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Calculates the variance of this series with the specified degree of freedom.
### Implementation
```dart
/// Calculates the variance of this series with the specified degree of freedom.
  Series varAsSeries({required int ddof, dynamic hint}) =>
      RustLib.instance.api.seriesVarAsSeries(
        that: this,
        ddof: ddof,
      );
```

[Series]: /reference/classes/series/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html