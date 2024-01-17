---
title: "meanAsSeries"
description: |
   Calculates and wraps this series' mean as a single-element series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] meanAsSeries</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Calculates and wraps this series' mean as a single-element series.
### Implementation
```dart
/// Calculates and wraps this series' mean as a single-element series.
  Series meanAsSeries({dynamic hint}) =>
      RustLib.instance.api.seriesMeanAsSeries(
        that: this,
      );
```

[Series]: /reference/classes/series/