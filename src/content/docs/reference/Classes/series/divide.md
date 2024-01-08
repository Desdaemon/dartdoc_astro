---
title: "divide"
description: |
   Returns a new series with elements from this series divided by [other]'s element-wise.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] divide</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a new series with elements from this series divided by [other]'s element-wise.
### Implementation
```dart
/// Returns a new series with elements from this series divided by [other]'s element-wise.
  Series divide({required Series other, dynamic hint}) =>
      RustLib.instance.api.seriesDivide(
        that: this,
        other: other,
      );
```

[Series]: /reference/classes/series