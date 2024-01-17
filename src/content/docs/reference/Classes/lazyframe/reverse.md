---
title: "reverse"
description: |
   Reverse the order of this dataframe's columns.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] reverse</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Reverse the order of this dataframe's columns.
### Implementation
```dart
/// Reverse the order of this dataframe's columns.
  LazyFrame reverse({dynamic hint}) => RustLib.instance.api.lazyFrameReverse(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe/