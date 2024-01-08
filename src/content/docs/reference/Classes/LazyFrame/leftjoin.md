---
title: "leftJoin"
description: |
   Performs a [left outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join) with [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] leftJoin</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr"><strong>required</strong> [Expr] leftOn</span>, <span class="nobr"><strong>required</strong> [Expr] rightOn</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Performs a [left outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join) with [other].
### Implementation
```dart
/// Performs a [left outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join) with [other].
  LazyFrame leftJoin(
          {required LazyFrame other,
          required Expr leftOn,
          required Expr rightOn,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameLeftJoin(
        that: this,
        other: other,
        leftOn: leftOn,
        rightOn: rightOn,
      );
```

[LazyFrame]: /reference/classes/lazyframe
[Expr]: /reference/classes/expr
[dynamic]: #