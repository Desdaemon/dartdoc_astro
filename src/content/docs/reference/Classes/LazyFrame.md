---
title: "LazyFrame"
description: |
  
---



## Constructors
### `.dcoDecode`
<code><strong>LazyFrame.dcoDecode</strong>(wire);</code>


Parameter|Type|Default
-|-|-
`wire`|<code>dynamic</code>|``|


### `.sseDecode`
<code><strong>LazyFrame.sseDecode</strong>(ptr, externalSizeOnNative);</code>


Parameter|Type|Default
-|-|-
`ptr`|<code>int</code>|``|
`externalSizeOnNative`|<code>int</code>|``|


## Methods
### `cache`
<code><strong>[LazyFrame] cache</strong>({<i>hint</i>});</code>

 Caches the results into a new [LazyFrame].

 This should be used to prevent computations running multiple times.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `collect`
<code><strong>Future\<DataFrame> collect</strong>({<i>streaming</i>, <i>hint</i>});</code>

 Executes all lazy operations and collects results into a [DataFrame].

 Can also optionally be run in [streaming mode](https://docs.pola.rs/user-guide/concepts/streaming).
Parameter|Type|Default
-|-|-
`streaming`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>|``|


### `crossJoin`
<code><strong>[LazyFrame] crossJoin</strong>({<strong>required</strong> other, <i>hint</i>});</code>

 Creates the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) from both frames,
 preserving the order of this frame's keys.
Parameter|Type|Default
-|-|-
`other`|<code>[LazyFrame]</code>|``|
`hint`|<code>dynamic</code>|``|


### `dropNulls`
<code><strong>[LazyFrame] dropNulls</strong>({<i>subset</i>, <i>hint</i>});</code>

 Drop null rows.

 Same as `frame.filter(col('*').isNotNull)`.
Parameter|Type|Default
-|-|-
`subset`|<code>List\<Expr>?</code>|``|
`hint`|<code>dynamic</code>|``|


### `explode`
<code><strong>[LazyFrame] explode</strong>({<strong>required</strong> columns, <i>hint</i>});</code>

 Explode each column.
Parameter|Type|Default
-|-|-
`columns`|<code>List\<Expr></code>|``|
`hint`|<code>dynamic</code>|``|


### `fetch`
<code><strong>Future\<DataFrame> fetch</strong>({<strong>required</strong> nRows, <i>hint</i>});</code>

 Similar to [collect], but overrides the number of rows read by each operation.

 The final row count is not guaranteed to be equal [nRows].
Parameter|Type|Default
-|-|-
`nRows`|<code>int</code>|``|
`hint`|<code>dynamic</code>|``|


### `filter`
<code><strong>[LazyFrame] filter</strong>({<strong>required</strong> pred, <i>hint</i>});</code>

 Filter by the specified predicate expression.
Parameter|Type|Default
-|-|-
`pred`|<code>[Expr]</code>|``|
`hint`|<code>dynamic</code>|``|


### `first`
<code><strong>[LazyFrame] first</strong>({<i>hint</i>});</code>

 Get the first row.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `groupBy`
<code><strong>[LazyGroupBy] groupBy</strong>({<strong>required</strong> exprs, <i>maintainOrder</i>, <i>hint</i>});</code>

 Define conditions by which to group and aggregate rows.
Parameter|Type|Default
-|-|-
`exprs`|<code>List\<Expr></code>|``|
`maintainOrder`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>|``|


### `innerJoin`
<code><strong>[LazyFrame] innerJoin</strong>({<strong>required</strong> other, <strong>required</strong> leftOn, <strong>required</strong> rightOn, <i>hint</i>});</code>

 Performs an [inner join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join_and_NULL_values) with [other].
Parameter|Type|Default
-|-|-
`other`|<code>[LazyFrame]</code>|``|
`leftOn`|<code>[Expr]</code>|``|
`rightOn`|<code>[Expr]</code>|``|
`hint`|<code>dynamic</code>|``|


### `join`
<code><strong>[LazyFrame] join</strong>({<strong>required</strong> other, <i>on</i>, <i>leftOn</i>, <i>rightOn</i>, <i>suffix</i>, <i>how</i>, <i>allowParallel</i>, <i>forceParallel</i>, <i>hint</i>});</code>

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
Parameter|Type|Default
-|-|-
`other`|<code>[LazyFrame]</code>|``|
`on`|<code>List\<Expr>?</code>|``|
`leftOn`|<code>List\<Expr>?</code>|``|
`rightOn`|<code>List\<Expr>?</code>|``|
`suffix`|<code>String</code>|`r"_right"`|
`how`|<code>[JoinType]</code>|`JoinType.left`|
`allowParallel`|<code>bool</code>|`true`|
`forceParallel`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>|``|


### `last`
<code><strong>[LazyFrame] last</strong>({<i>hint</i>});</code>

 Get the last row.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `leftJoin`
<code><strong>[LazyFrame] leftJoin</strong>({<strong>required</strong> other, <strong>required</strong> leftOn, <strong>required</strong> rightOn, <i>hint</i>});</code>

 Performs a [left outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join) with [other].
Parameter|Type|Default
-|-|-
`other`|<code>[LazyFrame]</code>|``|
`leftOn`|<code>[Expr]</code>|``|
`rightOn`|<code>[Expr]</code>|``|
`hint`|<code>dynamic</code>|``|


### `limit`
<code><strong>[LazyFrame] limit</strong>({<strong>required</strong> n, <i>hint</i>});</code>

 Limit this dataframe to the first [n] rows.

 To avoid scanning the rows, use [fetch].
Parameter|Type|Default
-|-|-
`n`|<code>int</code>|``|
`hint`|<code>dynamic</code>|``|


### `max`
<code><strong>[LazyFrame] max</strong>({<i>hint</i>});</code>

 Aggregate all columns as their max values.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `mean`
<code><strong>[LazyFrame] mean</strong>({<i>hint</i>});</code>

 Aggregate all columns as their means.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `median`
<code><strong>[LazyFrame] median</strong>({<i>hint</i>});</code>

 Aggregate all columns as their medians.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `melt`
<code><strong>[LazyFrame] melt</strong>({<strong>required</strong> idVars, <strong>required</strong> valueVars, <i>variableName</i>, <i>valueName</i>, <i>streamable</i>, <i>hint</i>});</code>

 [Melt](https://docs.pola.rs/user-guide/transformations/melt) this
 dataframe from the wide format to the long format.
Parameter|Type|Default
-|-|-
`idVars`|<code>List\<String></code>|``|
`valueVars`|<code>List\<String></code>|``|
`variableName`|<code>String?</code>|``|
`valueName`|<code>String?</code>|``|
`streamable`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>|``|


### `min`
<code><strong>[LazyFrame] min</strong>({<i>hint</i>});</code>

 Aggregate all columns as their min values.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `nullCount`
<code><strong>[LazyFrame] nullCount</strong>({<i>hint</i>});</code>


Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `outerJoin`
<code><strong>[LazyFrame] outerJoin</strong>({<strong>required</strong> other, <strong>required</strong> leftOn, <strong>required</strong> rightOn, <i>hint</i>});</code>

 Performs a [full outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join) with [other].
Parameter|Type|Default
-|-|-
`other`|<code>[LazyFrame]</code>|``|
`leftOn`|<code>[Expr]</code>|``|
`rightOn`|<code>[Expr]</code>|``|
`hint`|<code>dynamic</code>|``|


### `quantile`
<code><strong>[LazyFrame] quantile</strong>({<strong>required</strong> quantile, <strong>required</strong> interpol, <i>hint</i>});</code>

 Aggregate all columns as their quantiles.
Parameter|Type|Default
-|-|-
`quantile`|<code>[Expr]</code>|``|
`interpol`|<code>[QuantileInterpolOptions]</code>|``|
`hint`|<code>dynamic</code>|``|


### `reverse`
<code><strong>[LazyFrame] reverse</strong>({<i>hint</i>});</code>

 Reverse the order of this dataframe's columns.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `select`
<code><strong>[LazyFrame] select</strong>({<strong>required</strong> exprs, <i>hint</i>});</code>

 Select (and rename) columns from the query.
Parameter|Type|Default
-|-|-
`exprs`|<code>List\<Expr></code>|``|
`hint`|<code>dynamic</code>|``|


### `slice`
<code><strong>[LazyFrame] slice</strong>({<strong>required</strong> offset, <strong>required</strong> len, <i>hint</i>});</code>

 Slice the frame.
Parameter|Type|Default
-|-|-
`offset`|<code>int</code>|``|
`len`|<code>int</code>|``|
`hint`|<code>dynamic</code>|``|


### `sort`
<code><strong>[LazyFrame] sort</strong>({<strong>required</strong> byColumn, <i>descending</i>, <i>nullsLast</i>, <i>multithreaded</i>, <i>maintainOrder</i>, <i>hint</i>});</code>


Parameter|Type|Default
-|-|-
`byColumn`|<code>String</code>|``|
`descending`|<code>bool</code>|`false`|
`nullsLast`|<code>bool</code>|`false`|
`multithreaded`|<code>bool</code>|`true`|
`maintainOrder`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>|``|


### `std`
<code><strong>[LazyFrame] std</strong>({<strong>required</strong> ddof, <i>hint</i>});</code>

 Aggregate all columns as their standard deviances.
Parameter|Type|Default
-|-|-
`ddof`|<code>int</code>|``|
`hint`|<code>dynamic</code>|``|


### `sum`
<code><strong>[LazyFrame] sum</strong>({<i>hint</i>});</code>

 Aggregate all columns as their sums.
Parameter|Type|Default
-|-|-
`hint`|<code>dynamic</code>|``|


### `tail`
<code><strong>[LazyFrame] tail</strong>({<strong>required</strong> n, <i>hint</i>});</code>

 Get the last [n] rows.
Parameter|Type|Default
-|-|-
`n`|<code>int</code>|``|
`hint`|<code>dynamic</code>|``|


### `unique`
<code><strong>[LazyFrame] unique</strong>({<i>subset</i>, <strong>required</strong> keepStrategy, <i>hint</i>});</code>

 Keep unique rows without maintaining order.
Parameter|Type|Default
-|-|-
`subset`|<code>List\<String>?</code>|``|
`keepStrategy`|<code>[UniqueKeepStrategy]</code>|``|
`hint`|<code>dynamic</code>|``|


### `variance`
<code><strong>[LazyFrame] variance</strong>({<strong>required</strong> ddof, <i>hint</i>});</code>

 Aggregate all columns as their variances.
Parameter|Type|Default
-|-|-
`ddof`|<code>int</code>|``|
`hint`|<code>dynamic</code>|``|


### `withColumn`
<code><strong>[LazyFrame] withColumn</strong>({<strong>required</strong> expr, <i>hint</i>});</code>

 Add a column to this dataframe.
Parameter|Type|Default
-|-|-
`expr`|<code>[Expr]</code>|``|
`hint`|<code>dynamic</code>|``|


### `withColumns`
<code><strong>[LazyFrame] withColumns</strong>({<strong>required</strong> exprs, <i>hint</i>});</code>

 Add columns to this dataframe.
Parameter|Type|Default
-|-|-
`exprs`|<code>List\<Expr></code>|``|
`hint`|<code>dynamic</code>|``|


### `withRowCount`
<code><strong>[LazyFrame] withRowCount</strong>({<strong>required</strong> name, <i>offset</i>, <i>hint</i>});</code>

 Add a new column at index 0 denoting the row number.
Parameter|Type|Default
-|-|-
`name`|<code>String</code>|``|
`offset`|<code>int?</code>|``|
`hint`|<code>dynamic</code>|``|



[dynamic]: #
[LazyFrame]: /reference/classes/lazyframe
[Expr]: /reference/classes/expr
[LazyGroupBy]: /reference/classes/lazygroupby
[JoinType]: /reference/enums/jointype
[QuantileInterpolOptions]: /reference/enums/quantileinterpoloptions
[UniqueKeepStrategy]: /reference/enums/uniquekeepstrategy