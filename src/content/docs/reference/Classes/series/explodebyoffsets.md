---
title: "explodeByOffsets"
description: |
   TODO: docs
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] explodeByOffsets</strong>({<span class="nobr"><strong>required</strong> [Int64List] offsets</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: docs
### Implementation
```dart
/// TODO: docs
  Series explodeByOffsets({required Int64List offsets, dynamic hint}) =>
      RustLib.instance.api.seriesExplodeByOffsets(
        that: this,
        offsets: offsets,
      );
```

[Series]: /reference/classes/series
[Int64List]: /reference/classes/int64list