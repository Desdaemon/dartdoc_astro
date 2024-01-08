---
title: "std"
description: |
   Aggregate all columns as their standard deviances.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] std</strong>({<span class="nobr"><strong>required</strong> int ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Aggregate all columns as their standard deviances.
### Implementation
```dart
/// Aggregate all columns as their standard deviances.
  LazyFrame std({required int ddof, dynamic hint}) =>
      RustLib.instance.api.lazyFrameStd(
        that: this,
        ddof: ddof,
      );
```

[LazyFrame]: /reference/classes/lazyframe
[dynamic]: #