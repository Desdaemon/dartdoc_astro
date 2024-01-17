---
title: "min"
description: |
   Aggregate all columns as their min values.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] min</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their min values.
### Implementation
```dart
/// Aggregate all columns as their min values.
  LazyFrame min({dynamic hint}) => RustLib.instance.api.lazyFrameMin(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe/