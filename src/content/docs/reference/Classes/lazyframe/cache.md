---
title: "cache"
description: |
   Caches the results into a new [LazyFrame].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] cache</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Caches the results into a new [LazyFrame].

 This should be used to prevent computations running multiple times.
### Implementation
```dart
/// Caches the results into a new [LazyFrame].
  ///
  /// This should be used to prevent computations running multiple times.
  LazyFrame cache({dynamic hint}) => RustLib.instance.api.lazyFrameCache(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe