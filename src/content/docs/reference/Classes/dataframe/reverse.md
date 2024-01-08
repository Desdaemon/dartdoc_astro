---
title: "reverse"
description: |
   Returns a dataframe with columns from this dataframe in reverse order.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] reverse</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a dataframe with columns from this dataframe in reverse order.
### Implementation
```dart
/// Returns a dataframe with columns from this dataframe in reverse order.
  DataFrame reverse({dynamic hint}) => RustLib.instance.api.dataFrameReverse(
        that: this,
      );
```

[DataFrame]: /reference/classes/dataframe