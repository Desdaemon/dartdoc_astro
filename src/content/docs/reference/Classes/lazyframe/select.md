---
title: "select"
description: |
   Select (and rename) columns from the query.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] select</strong>({<span class="nobr"><strong>required</strong> [List]\<[Expr]> exprs</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Select (and rename) columns from the query.
### Implementation
```dart
/// Select (and rename) columns from the query.
  LazyFrame select({required List<Expr> exprs, dynamic hint}) =>
      RustLib.instance.api.lazyFrameSelect(
        that: this,
        exprs: exprs,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[Expr]: /reference/classes/expr/
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html