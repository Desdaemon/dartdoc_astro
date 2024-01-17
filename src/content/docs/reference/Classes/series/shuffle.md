---
title: "shuffle"
description: |
   Returns a new shuffled series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] shuffle</strong>({<span class="nobr">int? <i>seed</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a new shuffled series.
### Implementation
```dart
/// Returns a new shuffled series.
  Series shuffle({int? seed, dynamic hint}) =>
      RustLib.instance.api.seriesShuffle(
        that: this,
        seed: seed,
      );
```

[Series]: /reference/classes/series/