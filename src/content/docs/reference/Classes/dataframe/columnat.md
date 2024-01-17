---
title: "columnAt"
description: |
   Select the column at the given index.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] columnAt</strong>({<span class="nobr"><strong>required</strong> int index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Select the column at the given index.
### Implementation
```dart
/// Select the column at the given index.
  Series columnAt({required int index, dynamic hint}) =>
      RustLib.instance.api.dataFrameColumnAt(
        that: this,
        index: index,
      );
```

[Series]: /reference/classes/series/