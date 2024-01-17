---
title: "innerJoin"
description: |
   Performs an [inner join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join_and_NULL_values) with [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] innerJoin</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr"><strong>required</strong> [Expr] leftOn</span>, <span class="nobr"><strong>required</strong> [Expr] rightOn</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Performs an [inner join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join_and_NULL_values) with [other].
### Implementation
```dart
/// Performs an [inner join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join_and_NULL_values) with [other].
  LazyFrame innerJoin(
          {required LazyFrame other,
          required Expr leftOn,
          required Expr rightOn,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameInnerJoin(
        that: this,
        other: other,
        leftOn: leftOn,
        rightOn: rightOn,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[Expr]: /reference/classes/expr/