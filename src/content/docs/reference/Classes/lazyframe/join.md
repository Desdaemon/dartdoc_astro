---
title: "join"
description: |
   Joins this table to [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] join</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr">List&lt;Expr&gt;? <i>on</i></span>, <span class="nobr">List&lt;Expr&gt;? <i>leftOn</i></span>, <span class="nobr">List&lt;Expr&gt;? <i>rightOn</i></span>, <span class="nobr">String <i>suffix</i></span>, <span class="nobr">[JoinType] <i>how</i></span>, <span class="nobr">bool <i>allowParallel</i></span>, <span class="nobr">bool <i>forceParallel</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Joins this table to [other].

 Use [on] to specify columns on both frames to join on, or specify separately
 using [leftOn] and [rightOn].

 [suffix] specifies the suffix to add to duplicate columns of [other].

 Example:
 ```dart
 final joined = left
   .join(
     other: right,
     leftOn: [col('foo'), col('bar')],
     rightOn: [col('foo'), col('bar')],
     how: JoinType.Inner,
   );
 ```
### Implementation
```dart
/// Joins this table to [other].
  ///
  /// Use [on] to specify columns on both frames to join on, or specify separately
  /// using [leftOn] and [rightOn].
  ///
  /// [suffix] specifies the suffix to add to duplicate columns of [other].
  ///
  /// Example:
  /// ```dart
  /// final joined = left
  ///   .join(
  ///     other: right,
  ///     leftOn: [col('foo'), col('bar')],
  ///     rightOn: [col('foo'), col('bar')],
  ///     how: JoinType.Inner,
  ///   );
  /// ```
  LazyFrame join(
          {required LazyFrame other,
          List<Expr>? on,
          List<Expr>? leftOn,
          List<Expr>? rightOn,
          String suffix = r"_right",
          JoinType how = JoinType.left,
          bool allowParallel = true,
          bool forceParallel = false,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameJoin(
        that: this,
        other: other,
        on: on,
        leftOn: leftOn,
        rightOn: rightOn,
        suffix: suffix,
        how: how,
        allowParallel: allowParallel,
        forceParallel: forceParallel,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[JoinType]: /reference/enums/jointype/