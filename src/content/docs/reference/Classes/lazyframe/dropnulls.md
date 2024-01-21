---
title: "dropNulls"
description: |
   Drop null rows.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] dropNulls</strong>({<span class="nobr">[List]\<[Expr]> <i>subset</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

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
[Expr]: /reference/classes/expr/
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html