---
title: "max"
description: |
   Aggregate the columns to their maximum values.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] max</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate the columns to their maximum values.
### Implementation
```dart
/// Aggregate the columns to their maximum values.
  DataFrame max({dynamic hint}) => RustLib.instance.api.dataFrameMax(
        that: this,
      );
```

[DataFrame]: /reference/classes/dataframe
[dynamic]: #