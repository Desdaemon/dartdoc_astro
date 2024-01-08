---
title: "Series"
description: |

---
*Inheritance*:  
<code>[RustOpaque]</code> &rsaquo; `Series`


### Constructors
<dl>
<dt>

<span class="dart-code"><strong>Series.[dcoDecode](dcodecode)</strong>(<span class="nobr">List&lt;dynamic&gt; wire</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>Series.[sseDecode](ssedecode)</strong>(<span class="nobr">int ptr</span>, <span class="nobr">int externalSizeOnNative</span>);</span>
</dt>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[Series] [<strong>addTo](addto)</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new series with elements from this series added to [other]'s element-wise.
</dd>
<dt>

<span class="dart-code">void [<strong>append](append)</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Adds the contents of [other] onto this series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>applyScalar](applyscalar)</strong>({<span class="nobr"><strong>required</strong> [Operator] op</span>, <span class="nobr"><strong>required</strong> double value</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Applies a binary operation onto this series with a scalar value.
</dd>
<dt>

<span class="dart-code">List&lt;double?&gt; [<strong>asDoubles](asdoubles)</strong>({<span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 If compatible, returns a representation of this series as integers.
</dd>
<dt>

<span class="dart-code">List&lt;Duration?&gt; [<strong>asDurations](asdurations)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 If this series contains [Duration]s, returns its Dart representation.
</dd>
<dt>

<span class="dart-code">List&lt;int?&gt; [<strong>asInts](asints)</strong>({<span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 If compatible, returns a representation of this series as integers.
</dd>
<dt>

<span class="dart-code">List&lt;DateTime?&gt; [<strong>asLocalDatetime](aslocaldatetime)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 If this series contains [DateTime]s, returns its Dart representation.
</dd>
<dt>

<span class="dart-code">List&lt;DateTime?&gt; [<strong>asNaiveDatetime](asnaivedatetime)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 If this series contains [DateTime]s, returns its Dart representation.
</dd>
<dt>

<span class="dart-code">List&lt;String?&gt; [<strong>asStrings](asstrings)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 If this series is a UTF-8 series, returns its Dart representation.
</dd>
<dt>

<span class="dart-code">List&lt;DateTime?&gt; [<strong>asUtcDatetime](asutcdatetime)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 If this series contains [DateTime]s, returns its Dart representation.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>cast](cast)</strong>({<span class="nobr"><strong>required</strong> [DataType] dtype</span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Casts this series into one with the specified datatype.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>divide](divide)</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new series with elements from this series divided by [other]'s element-wise.
</dd>
<dt>

<span class="dart-code">String [<strong>dump](dump)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Dump the contents of this entire series.
</dd>
<dt>

<span class="dart-code">bool [<strong>equal](equal)</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">bool <i>ignoreNull</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns whether this series is identical to [other].
</dd>
<dt>

<span class="dart-code">int [<strong>estimatedSize](estimatedsize)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the amount of bytes occupied by this series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>explode](explode)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Expands a series of lists into rows of values, or strings into rows of characters.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>explodeByOffsets](explodebyoffsets)</strong>({<span class="nobr"><strong>required</strong> [Int64List] offsets</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: docs
</dd>
<dt>

<span class="dart-code">double? [<strong>get](get)</strong>({<span class="nobr"><strong>required</strong> int index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Get the value at [index] as a double.
</dd>
<dt>

<span class="dart-code">String? [<strong>getString](getstring)</strong>({<span class="nobr"><strong>required</strong> int index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Get the value at [index] as a string.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>head](head)</strong>({<span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Get the first few values of this series.
</dd>
<dt>

<span class="dart-code">[DataFrame] [<strong>intoFrame](intoframe)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Casts this series into a [DataFrame]. May create a copy.
</dd>
<dt>

<span class="dart-code">[LiteralValue] [<strong>intoLiteral](intoliteral)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Literals] [<strong>intoLiterals](intoliterals)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 @nodoc
</dd>
<dt>

<span class="dart-code">bool [<strong>isBool](isbool)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns whether this is a series of booleans.
</dd>
<dt>

<span class="dart-code">bool [<strong>isNumeric](isnumeric)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns whether this is a series of numeric values.
</dd>
<dt>

<span class="dart-code">bool [<strong>isTemporal](istemporal)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns whether this is a series of [DateTime] or [Duration]s.
</dd>
<dt>

<span class="dart-code">bool [<strong>isUtf8](isutf8)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns whether this is a series of UTF-8 strings.
</dd>
<dt>

<span class="dart-code">Stream&lt;dynamic&gt; [<strong>iter](iter)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Iterate over this series' values.
</dd>
<dt>

<span class="dart-code">double? [<strong>max](max)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the maximum value of this series' values.
</dd>
<dt>

<span class="dart-code">double? [<strong>mean](mean)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Calculates the mean (average) of this series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>meanAsSeries](meanasseries)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Calculates and wraps this series' mean as a single-element series.
</dd>
<dt>

<span class="dart-code">double? [<strong>median](median)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Calculates the [median](https://en.wikipedia.org/wiki/Median) of this series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>medianAsSeries](medianasseries)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Calculates and wraps this series' median as a single-element series.
</dd>
<dt>

<span class="dart-code">double? [<strong>min](min)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the minimum value of this series' values.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>multiply](multiply)</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new series with elements from this series multiplied with [other]'s element-wise.
</dd>
<dt>

<span class="dart-code"><strong>static</strong> [Series] [<strong>ofLits](oflits)</strong>({<span class="nobr">String <i>name</i></span>, <span class="nobr"><strong>required</strong> [Literals] values</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Series] [<strong>product](product)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Calculates the product of each element in the series and returns it in a single-element series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>remainder](remainder)</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new series with the [remainder](https://en.wikipedia.org/wiki/Remainder)
 between this series' and [other]'s elements.
</dd>
<dt>

<span class="dart-code">void [<strong>rename](rename)</strong>({<span class="nobr"><strong>required</strong> String name</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Rename this series to [name] in-place.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>reshape](reshape)</strong>({<span class="nobr"><strong>required</strong> [Int64List] dims</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Creates a new series with the specified dimensions.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingMax](rollingmax)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_max
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingMean](rollingmean)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_mean
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingMedian](rollingmedian)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_median
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingMin](rollingmin)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_min
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingQuantile](rollingquantile)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_quantile
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingStd](rollingstd)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_std
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingSum](rollingsum)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_sum
</dd>
<dt>

<span class="dart-code">[Series] [<strong>rollingVar](rollingvar)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">[Int64List?] <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timezone</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_var
</dd>
<dt>

<span class="dart-code">[Series] [<strong>shuffle](shuffle)</strong>({<span class="nobr">int? <i>seed</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new shuffled series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>sort](sort)</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new sorted series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>stdAsSeries](stdasseries)</strong>({<span class="nobr"><strong>required</strong> int ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Calculates the standard deviation of this series with the specified degree of freedom.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>subtract](subtract)</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a new series with elements from this series subtracted from [other]'s element-wise.
</dd>
<dt>

<span class="dart-code">double? [<strong>sum](sum)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Sums all non-null rows in this series to produce a result.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>sumAsSeries](sumasseries)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the sum of this series' values as a single-element series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>tail](tail)</strong>({<span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Get the last few values of this series.
</dd>
<dt>

<span class="dart-code">List&lt;dynamic&gt; [<strong>toList](tolist)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns an untyped list.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>unique](unique)</strong>({<span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns the unique values of this series.
</dd>
<dt>

<span class="dart-code">[Series] [<strong>varAsSeries](varasseries)</strong>({<span class="nobr"><strong>required</strong> int ddof</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Calculates the variance of this series with the specified degree of freedom.
</dd>
</dl>


## `SeriesExt` extensions

### Operators
<dl>
<dt>

<span class="dart-code">double? [<strong>operator</strong> <strong>[]](/reference/extensions/seriesext/op_get)</strong>(<span class="nobr">int index</span>);</span>
</dt>
<dt>

<span class="dart-code">[Series] [<strong>operator</strong> <strong>+](/reference/extensions/seriesext/op_add)</strong>(<span class="nobr">[Series] other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Series] [<strong>operator</strong> <strong>-](/reference/extensions/seriesext/op_sub)</strong>(<span class="nobr">[Series] other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Series] [<strong>operator</strong> <strong>*](/reference/extensions/seriesext/op_mul)</strong>(<span class="nobr">[Series] other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Series] [<strong>operator</strong> <strong>/](/reference/extensions/seriesext/op_div)</strong>(<span class="nobr">[Series] other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Series] [<strong>operator</strong> <strong>%](/reference/extensions/seriesext/op_mod)</strong>(<span class="nobr">[Series] other</span>);</span>
</dt>
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
[Series]: /reference/classes/series
[Operator]: /reference/enums/operator
[DataType]: /reference/classes/datatype
[Int64List]: /reference/classes/int64list
[DataFrame]: /reference/classes/dataframe
[LiteralValue]: /reference/classes/literalvalue
[Literals]: /reference/classes/literals
[Int64List?]: /reference/classes/int64list
[ClosedWindow?]: /reference/enums/closedwindow
[TimeUnit?]: /reference/enums/timeunit