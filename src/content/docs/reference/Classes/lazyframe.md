---
title: "LazyFrame"
description: |

---
*Inheritance*:  
<code>[RustOpaque]</code> &rsaquo; `LazyFrame`


### Constructors
<dl>
<dt>

<span class="dart-code"><strong>LazyFrame.[dcoDecode](dcodecode)</strong>(<span class="nobr">List&lt;dynamic&gt; wire</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>LazyFrame.[sseDecode](ssedecode)</strong>(<span class="nobr">int ptr</span>, <span class="nobr">int externalSizeOnNative</span>);</span>
</dt>
</dl>

### Properties
<dl>
<dt>

<span class="dart-code">[LazyFrame] <strong>get [first](first)</strong>;</span>
</dt>
<dd>

 Get the first row.
</dd>
<dt>

<span class="dart-code">[LazyFrame] <strong>get [last](last)</strong>;</span>
</dt>
<dd>

 Get the last row.
</dd>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[LazyFrame] [<strong>cache](cache)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Caches the results into a new [LazyFrame].
</dd>
<dt>

<span class="dart-code">Future&lt;DataFrame&gt; [<strong>collect](collect)</strong>({<span class="nobr">bool <i>streaming</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Executes all lazy operations and collects results into a [DataFrame].
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>crossJoin](crossjoin)</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Creates the [Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product) from both frames,
 preserving the order of this frame's keys.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>dropNulls](dropnulls)</strong>({<span class="nobr">List&lt;Expr&gt;? <i>subset</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Drop null rows.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>explode](explode)</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; columns</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Explode each column.
</dd>
<dt>

<span class="dart-code">Future&lt;DataFrame&gt; [<strong>fetch](fetch)</strong>({<span class="nobr"><strong>required</strong> int nRows</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Similar to [collect], but overrides the number of rows read by each operation.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>filter](filter)</strong>({<span class="nobr"><strong>required</strong> [Expr] pred</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Filter by the specified predicate expression.
</dd>
<dt>

<span class="dart-code">[LazyGroupBy] [<strong>groupBy](groupby)</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; exprs</span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Define conditions by which to group and aggregate rows.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>innerJoin](innerjoin)</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr"><strong>required</strong> [Expr] leftOn</span>, <span class="nobr"><strong>required</strong> [Expr] rightOn</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Performs an [inner join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join_and_NULL_values) with [other].
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>join](join)</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr">List&lt;Expr&gt;? <i>on</i></span>, <span class="nobr">List&lt;Expr&gt;? <i>leftOn</i></span>, <span class="nobr">List&lt;Expr&gt;? <i>rightOn</i></span>, <span class="nobr">String <i>suffix</i></span>, <span class="nobr">[JoinType] <i>how</i></span>, <span class="nobr">bool <i>allowParallel</i></span>, <span class="nobr">bool <i>forceParallel</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Joins this table to [other].
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>leftJoin](leftjoin)</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr"><strong>required</strong> [Expr] leftOn</span>, <span class="nobr"><strong>required</strong> [Expr] rightOn</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Performs a [left outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join) with [other].
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>limit](limit)</strong>({<span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Limit this dataframe to the first [n] rows.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>max](max)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their max values.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>mean](mean)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their means.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>median](median)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their medians.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>melt](melt)</strong>({<span class="nobr"><strong>required</strong> List&lt;String&gt; idVars</span>, <span class="nobr"><strong>required</strong> List&lt;String&gt; valueVars</span>, <span class="nobr">String? <i>variableName</i></span>, <span class="nobr">String? <i>valueName</i></span>, <span class="nobr">bool <i>streamable</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 [Melt](https://docs.pola.rs/user-guide/transformations/melt) this
 dataframe from the wide format to the long format.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>min](min)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their min values.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>nullCount](nullcount)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[LazyFrame] [<strong>outerJoin](outerjoin)</strong>({<span class="nobr"><strong>required</strong> [LazyFrame] other</span>, <span class="nobr"><strong>required</strong> [Expr] leftOn</span>, <span class="nobr"><strong>required</strong> [Expr] rightOn</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Performs a [full outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join) with [other].
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>quantile](quantile)</strong>({<span class="nobr"><strong>required</strong> [Expr] quantile</span>, <span class="nobr"><strong>required</strong> [QuantileInterpolOptions] interpol</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their quantiles.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>reverse](reverse)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Reverse the order of this dataframe's columns.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>select](select)</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; exprs</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Select (and rename) columns from the query.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>slice](slice)</strong>({<span class="nobr"><strong>required</strong> int offset</span>, <span class="nobr"><strong>required</strong> int len</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Slice the frame.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>sort](sort)</strong>({<span class="nobr"><strong>required</strong> String byColumn</span>, <span class="nobr">bool <i>descending</i></span>, <span class="nobr">bool <i>nullsLast</i></span>, <span class="nobr">bool <i>multithreaded</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[LazyFrame] [<strong>std](std)</strong>({<span class="nobr"><strong>required</strong> int ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their standard deviances.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>sum](sum)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their sums.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>tail](tail)</strong>({<span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Get the last [n] rows.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>unique](unique)</strong>({<span class="nobr">List&lt;String&gt;? <i>subset</i></span>, <span class="nobr"><strong>required</strong> [UniqueKeepStrategy] keepStrategy</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Keep unique rows without maintaining order.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>variance](variance)</strong>({<span class="nobr"><strong>required</strong> int ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate all columns as their variances.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>withColumn](withcolumn)</strong>({<span class="nobr"><strong>required</strong> [Expr] expr</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Add a column to this dataframe.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>withColumns](withcolumns)</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; exprs</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Add columns to this dataframe.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>withRowCount](withrowcount)</strong>({<span class="nobr"><strong>required</strong> String name</span>, <span class="nobr">int? <i>offset</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Add a new column at index 0 denoting the row number.
</dd>
</dl>



## Inherited from `RustOpaque`

### Properties
<dl>
<dt>

<span class="dart-code"><strong>[move=](/reference/classes/rustopaque/move)</strong>(bool?);</span>
</dt>
<dt>

<span class="dart-code">bool <strong>get [isDisposed](/reference/classes/rustopaque/isdisposed)</strong>;</span>
</dt>
<dd>

 Whether the underlying `Arc` is disposed.
</dd>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">Pointer&lt;Void&gt; [<strong>cstEncode](/reference/classes/rustopaque/cstencode)</strong>({<span class="nobr">bool? <i>move</i></span>});</span>
</dt>
<dd>

 {@macro flutter_rust_bridge.only_for_generated_code}
</dd>
<dt>

<span class="dart-code">int [<strong>sseEncode](/reference/classes/rustopaque/sseencode)</strong>({<span class="nobr">bool? <i>move</i></span>});</span>
</dt>
<dd>

 {@macro flutter_rust_bridge.only_for_generated_code}
</dd>
<dt>

<span class="dart-code">void [<strong>dispose](/reference/classes/rustopaque/dispose)</strong>();</span>
</dt>
<dd>

 Dispose the underlying `Arc`.
</dd>
</dl>

[RustOpaque]: /reference/classes/rustopaque/
[LazyFrame]: /reference/classes/lazyframe/
[Expr]: /reference/classes/expr/
[LazyGroupBy]: /reference/classes/lazygroupby/
[JoinType]: /reference/enums/jointype/
[QuantileInterpolOptions]: /reference/enums/quantileinterpoloptions/
[UniqueKeepStrategy]: /reference/enums/uniquekeepstrategy/