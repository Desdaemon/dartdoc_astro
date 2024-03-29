---
title: "groupBy"
description: |
   Define conditions by which to group and aggregate rows.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyGroupBy] groupBy</strong>({<span class="nobr"><strong>required</strong> [List]\<[Expr]> exprs</span>, <span class="nobr">[bool] <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Define conditions by which to group and aggregate rows.
### Implementation
```dart
/// Define conditions by which to group and aggregate rows.
  LazyGroupBy groupBy(
          {required List<Expr> exprs,
          bool maintainOrder = false,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameGroupBy(
        that: this,
        exprs: exprs,
        maintainOrder: maintainOrder,
      );
```

[LazyGroupBy]: /reference/classes/lazygroupby/
[Expr]: /reference/classes/expr/
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html