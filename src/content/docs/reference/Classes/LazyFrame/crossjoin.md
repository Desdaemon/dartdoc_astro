---
title: "crossJoin"
description: |
   Creates the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) from both frames,
   preserving the order of this frame's keys.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] crossJoin</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Creates the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) from both frames,
 preserving the order of this frame's keys.
### Implementation
```dart
/// Creates the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) from both frames,
  /// preserving the order of this frame's keys.
  LazyFrame crossJoin({required LazyFrame other, dynamic hint}) =>
      RustLib.instance.api.lazyFrameCrossJoin(
        that: this,
        other: other,
      );
```

[LazyFrame]: /reference/classes/lazyframe
[dynamic]: #