---
title: "sumAsSeries"
description: |
   Returns the sum of this series' values as a single-element series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] sumAsSeries</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the sum of this series' values as a single-element series.
### Implementation
```dart
/// Returns the sum of this series' values as a single-element series.
  Series sumAsSeries({dynamic hint}) => RustLib.instance.api.seriesSumAsSeries(
        that: this,
      );
```

[Series]: /reference/classes/series
[dynamic]: #