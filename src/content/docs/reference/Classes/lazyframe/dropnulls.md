---
title: "dropNulls"
description: |
   Drop null rows.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] dropNulls</strong>({<span class="nobr">List&lt;Expr&gt;? <i>subset</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Drop null rows.

 Same as `frame.filter(col('*').isNotNull)`.
### Implementation
```dart
/// Drop null rows.
  ///
  /// Same as `frame.filter(col('*').isNotNull)`.
  LazyFrame dropNulls({List<Expr>? subset, dynamic hint}) =>
      RustLib.instance.api.lazyFrameDropNulls(
        that: this,
        subset: subset,
      );
```

[LazyFrame]: /reference/classes/lazyframe/