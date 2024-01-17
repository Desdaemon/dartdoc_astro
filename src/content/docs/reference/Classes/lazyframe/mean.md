---
title: "mean"
description: |
   Aggregate all columns as their means.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] mean</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their means.
### Implementation
```dart
/// Aggregate all columns as their means.
  LazyFrame mean({dynamic hint}) => RustLib.instance.api.lazyFrameMean(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe/