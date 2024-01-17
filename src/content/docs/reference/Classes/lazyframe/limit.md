---
title: "limit"
description: |
   Limit this dataframe to the first [n] rows.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] limit</strong>({<span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Limit this dataframe to the first [n] rows.

 To avoid scanning the rows, use [fetch].
### Implementation
```dart
/// Limit this dataframe to the first [n] rows.
  ///
  /// To avoid scanning the rows, use [fetch].
  LazyFrame limit({required int n, dynamic hint}) =>
      RustLib.instance.api.lazyFrameLimit(
        that: this,
        n: n,
      );
```

[LazyFrame]: /reference/classes/lazyframe/