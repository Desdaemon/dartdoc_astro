---
title: "medianAsSeries"
description: |
   Calculates and wraps this series' median as a single-element series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] medianAsSeries</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Calculates and wraps this series' median as a single-element series.
### Implementation
```dart
/// Calculates and wraps this series' median as a single-element series.
  Series medianAsSeries({dynamic hint}) =>
      RustLib.instance.api.seriesMedianAsSeries(
        that: this,
      );
```

[Series]: /reference/classes/series
[dynamic]: #