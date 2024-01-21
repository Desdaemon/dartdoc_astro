---
title: "explode"
description: |
   Explode each column.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] explode</strong>({<span class="nobr"><strong>required</strong> [List]\<[Expr]> columns</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Explode each column.
### Implementation
```dart
/// Explode each column.
  LazyFrame explode({required List<Expr> columns, dynamic hint}) =>
      RustLib.instance.api.lazyFrameExplode(
        that: this,
        columns: columns,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[Expr]: /reference/classes/expr/
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html