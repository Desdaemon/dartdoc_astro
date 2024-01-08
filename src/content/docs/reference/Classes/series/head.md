---
title: "head"
description: |
   Get the first few values of this series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] head</strong>({<span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Get the first few values of this series.
### Implementation
```dart
/// Get the first few values of this series.
  Series head({int? length, dynamic hint}) => RustLib.instance.api.seriesHead(
        that: this,
        length: length,
      );
```

[Series]: /reference/classes/series