---
title: "agg"
description: |
   Group by and aggregate.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] agg</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; exprs</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Group by and aggregate.

 Select a column with [col] and choose an aggregation. If you want to aggregate all columns
 use <code>[col]\("*")</code>.
### Implementation
```dart
/// Group by and aggregate.
  ///
  /// Select a column with [col] and choose an aggregation. If you want to aggregate all columns
  /// use <code>[col]\("*")</code>.
  LazyFrame agg({required List<Expr> exprs, dynamic hint}) =>
      RustLib.instance.api.lazyGroupByAgg(
        that: this,
        exprs: exprs,
      );
```

[LazyFrame]: /reference/classes/lazyframe