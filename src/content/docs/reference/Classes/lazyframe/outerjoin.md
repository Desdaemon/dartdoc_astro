---
title: "outerJoin"
description: |
   Performs a [full outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join) with [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] outerJoin</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr"><strong>required</strong> [Expr] leftOn</span>, <span class="nobr"><strong>required</strong> [Expr] rightOn</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Performs a [full outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join) with [other].
### Implementation
```dart
/// Performs a [full outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join) with [other].
  LazyFrame outerJoin(
          {required LazyFrame other,
          required Expr leftOn,
          required Expr rightOn,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameOuterJoin(
        that: this,
        other: other,
        leftOn: leftOn,
        rightOn: rightOn,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[Expr]: /reference/classes/expr/