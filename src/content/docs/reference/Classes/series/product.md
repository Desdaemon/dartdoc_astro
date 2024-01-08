---
title: "product"
description: |
   Calculates the product of each element in the series and returns it in a single-element series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] product</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Calculates the product of each element in the series and returns it in a single-element series.
### Implementation
```dart
/// Calculates the product of each element in the series and returns it in a single-element series.
  Series product({dynamic hint}) => RustLib.instance.api.seriesProduct(
        that: this,
      );
```

[Series]: /reference/classes/series