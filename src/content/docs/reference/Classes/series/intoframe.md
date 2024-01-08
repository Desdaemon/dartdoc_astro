---
title: "intoFrame"
description: |
   Casts this series into a [DataFrame]. May create a copy.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] intoFrame</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Casts this series into a [DataFrame]. May create a copy.
### Implementation
```dart
/// Casts this series into a [DataFrame]. May create a copy.
  DataFrame intoFrame({dynamic hint}) => RustLib.instance.api.seriesIntoFrame(
        that: this,
      );
```

[DataFrame]: /reference/classes/dataframe