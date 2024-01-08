---
title: "tail"
description: |
   Get the last few values of this series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] tail</strong>({<span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Get the last few values of this series.
### Implementation
```dart
/// Get the last few values of this series.
  Series tail({int? length, dynamic hint}) => RustLib.instance.api.seriesTail(
        that: this,
        length: length,
      );
```

[Series]: /reference/classes/series