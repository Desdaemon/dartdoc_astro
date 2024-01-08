---
title: "select"
description: |
   Select (and rename) columns from the query.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] select</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; exprs</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

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

[LazyFrame]: /reference/classes/lazyframe