---
title: "dropInPlace"
description: |
   Drops a column in-place and returns it.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] dropInPlace</strong>({<span class="nobr"><strong>required</strong> String column</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Drops a column in-place and returns it.
### Implementation
```dart
/// Drops a column in-place and returns it.
  Series dropInPlace({required String column, dynamic hint}) =>
      RustLib.instance.api.dataFrameDropInPlace(
        that: this,
        column: column,
      );
```

[Series]: /reference/classes/series/