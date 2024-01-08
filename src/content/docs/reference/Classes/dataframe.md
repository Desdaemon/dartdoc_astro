---
title: "DataFrame"
description: |

---
*Inheritance*:  
<code>[RustOpaque]</code> &rsaquo; `DataFrame`


### Constructors
<dl>
<dt>

<span class="dart-code"><strong>DataFrame.[dcoDecode](dcodecode)</strong>(<span class="nobr">List&lt;dynamic&gt; wire</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>DataFrame.[sseDecode](ssedecode)</strong>(<span class="nobr">int ptr</span>, <span class="nobr">int externalSizeOnNative</span>);</span>
</dt>
</dl>

### Properties
<dl>
<dt>

<span class="dart-code">List&lt;String&gt; <strong>get [columnNames](columnnames)</strong>;</span>
</dt>
<dd>

 Get the names of this dataframe's columns.
</dd>
<dt>

<span class="dart-code">[VecSeries] <strong>get [columns](columns)</strong>;</span>
</dt>
<dd>

 Get all columns of this dataframe.
</dd>
<dt>

<span class="dart-code">int <strong>get [estimatedSize](estimatedsize)</strong>;</span>
</dt>
<dd>

 Returns the amount of bytes occupied by this series.
</dd>
<dt>

<span class="dart-code">int <strong>get [height](height)</strong>;</span>
</dt>
<dd>

 Returns the height of this dataframe, aka the number of rows.
</dd>
<dt>

<span class="dart-code">bool <strong>get [isEmpty](isempty)</strong>;</span>
</dt>
<dd>

 Returns whether this dataframe has no rows.
</dd>
<dt>

<span class="dart-code">(int, int) <strong>get [shape](shape)</strong>;</span>
</dt>
<dd>

 Returns the height and width of this dataframe.
</dd>
<dt>

<span class="dart-code">int <strong>get [width](width)</strong>;</span>
</dt>
<dd>

 Returns the width of this dataframe, aka the number of columns.
</dd>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[DataFrame] [<strong>clone](clone)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Series] [<strong>column](column)</strong>({<span class="nobr"><strong>required</strong> String column</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Select a single column by name.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>columnAt](columnat)</strong>({<span class="nobr"><strong>required</strong> int index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Select the column at the given index.
</dd>
<dt>

<span class="dart-code">[VecSeries] [<strong>columns](columns)</strong>({<span class="nobr"><strong>required</strong> List&lt;String&gt; columns</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Select multiple columns by name.
</dd>
<dt>

<span class="dart-code">Future&lt;DataFrame&gt; [<strong>describe](describe)</strong>({<span class="nobr">Float64List? <i>percentiles</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Output statistics about this dataframe.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>drop](drop)</strong>({<span class="nobr"><strong>required</strong> String column</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Drops a column by name, producing a new dataframe.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>dropInPlace](dropinplace)</strong>({<span class="nobr"><strong>required</strong> String column</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Drops a column in-place and returns it.
</dd>
<dt>

<span class="dart-code">List&lt;DataType&gt; [<strong>dtypes](dtypes)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the datatypes of this dataframe's columns.
</dd>
<dt>

<span class="dart-code">String [<strong>dump](dump)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Dump the contents of this entire dataframe.
</dd>
<dt>

<span class="dart-code">List&lt;dynamic&gt; [<strong>getRow](getrow)</strong>({<span class="nobr"><strong>required</strong> int index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Get a row of data from this dataframe.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>head](head)</strong>({<span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the first few rows of this dataframe.
</dd>
<dt>

<span class="dart-code">Stream&lt;List&lt;dynamic&gt;&gt; [<strong>iter](iter)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Iterate through this dataframe's rows.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>lazy](lazy)</strong>({<span class="nobr">bool? <i>projectionPushdown</i></span>, <span class="nobr">bool? <i>predicatePushdown</i></span>, <span class="nobr">bool? <i>typeCoercion</i></span>, <span class="nobr">bool? <i>simplifyExpressions</i></span>, <span class="nobr">bool? <i>slicePushdown</i></span>, <span class="nobr">bool? <i>streaming</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a [LazyFrame] to which operations can be applied lazily.
 As opposed to [LazyFrame], [DataFrame] by default applies its operations eagerly.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>max](max)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Aggregate the columns to their maximum values.
</dd>
<dt>

<span class="dart-code"><strong>static</strong> [DataFrame] [<strong>ofLits](oflits)</strong>({<span class="nobr">List&lt;(String, Literals)&gt;? <i>series</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new, empty dataframe.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>reverse](reverse)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a dataframe with columns from this dataframe in reverse order.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>sample](sample)</strong>({<span class="nobr"><strong>required</strong> [Series] n</span>, <span class="nobr">bool <i>withReplacement</i></span>, <span class="nobr">bool <i>shuffle</i></span>, <span class="nobr">int? <i>seed</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Sample [n] datapoints from this dataframe.
</dd>
<dt>

<span class="dart-code">[Schema] [<strong>schema](schema)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the [Schema] of this dataframe.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>select](select)</strong>({<span class="nobr"><strong>required</strong> List&lt;String&gt; columns</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Makes a new dataframe with the specified columns from this dataframe.
</dd>
<dt>

<span class="dart-code">void [<strong>sortInPlace](sortinplace)</strong>({<span class="nobr">List&lt;String&gt; <i>byColumn</i></span>, <span class="nobr">List&lt;bool&gt; <i>descending</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Sorts this dataframe by the specified columns.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>tail](tail)</strong>({<span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the last few rows of this dataframe.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>withRowCount](withrowcount)</strong>({<span class="nobr"><strong>required</strong> String name</span>, <span class="nobr">int? <i>offset</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Add a new column at index 0 denoting the row number.
</dd>
</dl>


## `DataFrameExt` extensions

### Operators
<dl>
<dt>

<span class="dart-code">[Series] [<strong>operator</strong> <strong>[]](/reference/extensions/dataframeext/op_get)</strong>(<span class="nobr">Object key</span>);</span>
</dt>
<dd>

 Retrieves the columns either by name or index.
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

[RustOpaque]: /reference/classes/rustopaque
[VecSeries]: /reference/classes/vecseries
[DataFrame]: /reference/classes/dataframe
[Series]: /reference/classes/series
[LazyFrame]: /reference/classes/lazyframe
[Schema]: /reference/classes/schema