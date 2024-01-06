---
title: "Series"
description: |
  
---


### Constructors
#### `.dcoDecode`
<code><strong>Series.dcoDecode</strong>(wire);</code>


Parameter|Type|Default|
-|-|-|
`wire`|<code>dynamic</code>||
#### `.sseDecode`
<code><strong>Series.sseDecode</strong>(ptr, externalSizeOnNative);</code>


Parameter|Type|Default|
-|-|-|
`ptr`|<code>int</code>||
`externalSizeOnNative`|<code>int</code>||
### Methods
#### `addTo`
<code><strong>[Series] addTo</strong>({<strong>required</strong> other, <i>hint</i>});</code>

 Returns a new series with elements from this series added to [other]'s element-wise.
Parameter|Type|Default|
-|-|-|
`other`|<code>[Series]</code>||
`hint`|<code>dynamic</code>||
#### `append`
<code><strong>void append</strong>({<strong>required</strong> other, <i>hint</i>});</code>

 Adds the contents of [other] onto this series.

 Throws if [other] is self.
Parameter|Type|Default|
-|-|-|
`other`|<code>[Series]</code>||
`hint`|<code>dynamic</code>||
#### `applyScalar`
<code><strong>[Series] applyScalar</strong>({<strong>required</strong> op, <strong>required</strong> value, <i>hint</i>});</code>

 Applies a binary operation onto this series with a scalar value.

 For logic operators, the new series is a boolean mask. Otherwise,
 it will be a series of numeric values.
Parameter|Type|Default|
-|-|-|
`op`|<code>[Operator]</code>||
`value`|<code>double</code>||
`hint`|<code>dynamic</code>||
#### `asDoubles`
<code><strong>List\<double?> asDoubles</strong>({<i>strict</i>, <i>hint</i>});</code>

 If compatible, returns a representation of this series as integers.
Parameter|Type|Default|
-|-|-|
`strict`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `asDurations`
<code><strong>List\<Duration?> asDurations</strong>({<i>hint</i>});</code>

 If this series contains [Duration]s, returns its Dart representation.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `asInts`
<code><strong>List\<int?> asInts</strong>({<i>strict</i>, <i>hint</i>});</code>

 If compatible, returns a representation of this series as integers.
Parameter|Type|Default|
-|-|-|
`strict`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `asLocalDatetime`
<code><strong>List\<DateTime?> asLocalDatetime</strong>({<i>hint</i>});</code>

 If this series contains [DateTime]s, returns its Dart representation.

 If a timezone is defined by this series, the datetimes will be converted to the local timezone.
 Otherwise, the datetimes are assumed to be in the local timezone.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `asNaiveDatetime`
<code><strong>List\<DateTime?> asNaiveDatetime</strong>({<i>hint</i>});</code>

 If this series contains [DateTime]s, returns its Dart representation.

 Datetimes are parsed as-is, without any timezone correction.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `asStrings`
<code><strong>List\<String?> asStrings</strong>({<i>hint</i>});</code>

 If this series is a UTF-8 series, returns its Dart representation.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `asUtcDatetime`
<code><strong>List\<DateTime?> asUtcDatetime</strong>({<i>hint</i>});</code>

 If this series contains [DateTime]s, returns its Dart representation.

 If a timezone is defined by this series, the datetimes will be converted to UTC.
 Otherwise, the datetimes are assumed to be in UTC.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `cast`
<code><strong>[Series] cast</strong>({<strong>required</strong> dtype, <i>strict</i>, <i>hint</i>});</code>

 Casts this series into one with the specified datatype.
Parameter|Type|Default|
-|-|-|
`dtype`|<code>[DataType]</code>||
`strict`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `divide`
<code><strong>[Series] divide</strong>({<strong>required</strong> other, <i>hint</i>});</code>

 Returns a new series with elements from this series divided by [other]'s element-wise.
Parameter|Type|Default|
-|-|-|
`other`|<code>[Series]</code>||
`hint`|<code>dynamic</code>||
#### `dump`
<code><strong>String dump</strong>({<i>hint</i>});</code>

 Dump the contents of this entire series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `equal`
<code><strong>bool equal</strong>({<strong>required</strong> other, <i>ignoreNull</i>, <i>hint</i>});</code>

 Returns whether this series is identical to [other].

 if `ignoreNull` is true, null values are considered to be equal.
Parameter|Type|Default|
-|-|-|
`other`|<code>[Series]</code>||
`ignoreNull`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `estimatedSize`
<code><strong>int estimatedSize</strong>({<i>hint</i>});</code>

 Returns the amount of bytes occupied by this series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `explode`
<code><strong>[Series] explode</strong>({<i>hint</i>});</code>

 Expands a series of lists into rows of values, or strings into rows of characters.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `explodeByOffsets`
<code><strong>[Series] explodeByOffsets</strong>({<strong>required</strong> offsets, <i>hint</i>});</code>

 TODO: docs
Parameter|Type|Default|
-|-|-|
`offsets`|<code>[Int64List]</code>||
`hint`|<code>dynamic</code>||
#### `get`
<code><strong>double? get</strong>({<strong>required</strong> index, <i>hint</i>});</code>

 Get the value at [index] as a double.
Parameter|Type|Default|
-|-|-|
`index`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `getString`
<code><strong>String? getString</strong>({<strong>required</strong> index, <i>hint</i>});</code>

 Get the value at [index] as a string.
Parameter|Type|Default|
-|-|-|
`index`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `head`
<code><strong>[Series] head</strong>({<i>length</i>, <i>hint</i>});</code>

 Get the first few values of this series.
Parameter|Type|Default|
-|-|-|
`length`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `intoFrame`
<code><strong>[DataFrame] intoFrame</strong>({<i>hint</i>});</code>

 Casts this series into a [DataFrame]. May create a copy.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `intoLiteral`
<code><strong>[LiteralValue] intoLiteral</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `intoLiterals`
<code><strong>[Literals] intoLiterals</strong>({<i>hint</i>});</code>

 @nodoc
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isBool`
<code><strong>bool isBool</strong>({<i>hint</i>});</code>

 Returns whether this is a series of booleans.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isNumeric`
<code><strong>bool isNumeric</strong>({<i>hint</i>});</code>

 Returns whether this is a series of numeric values.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isTemporal`
<code><strong>bool isTemporal</strong>({<i>hint</i>});</code>

 Returns whether this is a series of [DateTime] or [Duration]s.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isUtf8`
<code><strong>bool isUtf8</strong>({<i>hint</i>});</code>

 Returns whether this is a series of UTF-8 strings.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `iter`
<code><strong>Stream\<dynamic> iter</strong>({<i>hint</i>});</code>

 Iterate over this series' values.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `max`
<code><strong>double? max</strong>({<i>hint</i>});</code>

 Returns the maximum value of this series' values.

 Returns null if one of the values are also null.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `mean`
<code><strong>double? mean</strong>({<i>hint</i>});</code>

 Calculates the mean (average) of this series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `meanAsSeries`
<code><strong>[Series] meanAsSeries</strong>({<i>hint</i>});</code>

 Calculates and wraps this series' mean as a single-element series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `median`
<code><strong>double? median</strong>({<i>hint</i>});</code>

 Calculates the [median](https://en.wikipedia.org/wiki/Median) of this series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `medianAsSeries`
<code><strong>[Series] medianAsSeries</strong>({<i>hint</i>});</code>

 Calculates and wraps this series' median as a single-element series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `min`
<code><strong>double? min</strong>({<i>hint</i>});</code>

 Returns the minimum value of this series' values.

 Returns null if one of the values are also null.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `multiply`
<code><strong>[Series] multiply</strong>({<strong>required</strong> other, <i>hint</i>});</code>

 Returns a new series with elements from this series multiplied with [other]'s element-wise.
Parameter|Type|Default|
-|-|-|
`other`|<code>[Series]</code>||
`hint`|<code>dynamic</code>||
#### `Series.ofLits`
<code><strong>static [Series] ofLits</strong>({<i>name</i>, <strong>required</strong> values, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`name`|<code>String</code>|`r""`|
`values`|<code>[Literals]</code>||
`hint`|<code>dynamic</code>||
#### `product`
<code><strong>[Series] product</strong>({<i>hint</i>});</code>

 Calculates the product of each element in the series and returns it in a single-element series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `remainder`
<code><strong>[Series] remainder</strong>({<strong>required</strong> other, <i>hint</i>});</code>

 Returns a new series with the [remainder](https://en.wikipedia.org/wiki/Remainder)
 between this series' and [other]'s elements.
Parameter|Type|Default|
-|-|-|
`other`|<code>[Series]</code>||
`hint`|<code>dynamic</code>||
#### `rename`
<code><strong>void rename</strong>({<strong>required</strong> name, <i>hint</i>});</code>

 Rename this series to [name] in-place.
Parameter|Type|Default|
-|-|-|
`name`|<code>String</code>||
`hint`|<code>dynamic</code>||
#### `reshape`
<code><strong>[Series] reshape</strong>({<strong>required</strong> dims, <i>hint</i>});</code>

 Creates a new series with the specified dimensions.
Parameter|Type|Default|
-|-|-|
`dims`|<code>[Int64List]</code>||
`hint`|<code>dynamic</code>||
#### `rollingMax`
<code><strong>[Series] rollingMax</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_max
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `rollingMean`
<code><strong>[Series] rollingMean</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_mean
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `rollingMedian`
<code><strong>[Series] rollingMedian</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_median
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `rollingMin`
<code><strong>[Series] rollingMin</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_min
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `rollingQuantile`
<code><strong>[Series] rollingQuantile</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_quantile
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `rollingStd`
<code><strong>[Series] rollingStd</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_std
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `rollingSum`
<code><strong>[Series] rollingSum</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_sum
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `rollingVar`
<code><strong>[Series] rollingVar</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>timeUnit</i>, <i>timezone</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_var
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>[Int64List?]</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timezone`|<code>String?</code>||
`hint`|<code>dynamic</code>||
#### `shuffle`
<code><strong>[Series] shuffle</strong>({<i>seed</i>, <i>hint</i>});</code>

 Returns a new shuffled series.
Parameter|Type|Default|
-|-|-|
`seed`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `sort`
<code><strong>[Series] sort</strong>({<i>reverse</i>, <i>hint</i>});</code>

 Returns a new sorted series.
Parameter|Type|Default|
-|-|-|
`reverse`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `stdAsSeries`
<code><strong>[Series] stdAsSeries</strong>({<strong>required</strong> ddof, <i>hint</i>});</code>

 Calculates the standard deviation of this series with the specified degree of freedom.
Parameter|Type|Default|
-|-|-|
`ddof`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `subtract`
<code><strong>[Series] subtract</strong>({<strong>required</strong> other, <i>hint</i>});</code>

 Returns a new series with elements from this series subtracted from [other]'s element-wise.
Parameter|Type|Default|
-|-|-|
`other`|<code>[Series]</code>||
`hint`|<code>dynamic</code>||
#### `sum`
<code><strong>double? sum</strong>({<i>hint</i>});</code>

 Sums all non-null rows in this series to produce a result.

 Returns null if the series only contains null values.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `sumAsSeries`
<code><strong>[Series] sumAsSeries</strong>({<i>hint</i>});</code>

 Returns the sum of this series' values as a single-element series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `tail`
<code><strong>[Series] tail</strong>({<i>length</i>, <i>hint</i>});</code>

 Get the last few values of this series.
Parameter|Type|Default|
-|-|-|
`length`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `toList`
<code><strong>List\<dynamic> toList</strong>({<i>hint</i>});</code>

 Returns an untyped list.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `unique`
<code><strong>[Series] unique</strong>({<i>maintainOrder</i>, <i>hint</i>});</code>

 Returns the unique values of this series.

 If `stable` is true, extra work is done to maintain the original order of elements.
Parameter|Type|Default|
-|-|-|
`maintainOrder`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `varAsSeries`
<code><strong>[Series] varAsSeries</strong>({<strong>required</strong> ddof, <i>hint</i>});</code>

 Calculates the variance of this series with the specified degree of freedom.
Parameter|Type|Default|
-|-|-|
`ddof`|<code>int</code>||
`hint`|<code>dynamic</code>||

[dynamic]: #
[Series]: /reference/classes/series
[void]: #
[Operator]: /reference/enums/operator
[DataType]: /reference/classes/datatype
[Int64List]: /reference/classes/int64list
[DataFrame]: /reference/classes/dataframe
[LiteralValue]: /reference/classes/literalvalue
[Literals]: /reference/classes/literals
[Int64List?]: /reference/classes/int64list
[ClosedWindow?]: /reference/enums/closedwindow
[TimeUnit?]: /reference/enums/timeunit