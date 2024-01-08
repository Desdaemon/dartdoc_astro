---
title: "withColumns"
description: |
   Add columns to this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] withColumns</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; exprs</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Add columns to this dataframe.
### Implementation
```dart
/// Add columns to this dataframe.
  LazyFrame withColumns({required List<Expr> exprs, dynamic hint}) =>
      RustLib.instance.api.lazyFrameWithColumns(
        that: this,
        exprs: exprs,
      );
```

[LazyFrame]: /reference/classes/lazyframe