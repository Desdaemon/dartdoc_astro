---
title: "Expr"
description: |
   Expressions for use in query and aggregration operations.
---
 Expressions for use in query and aggregration operations.

### Constructors
#### `.alias`
<code><strong>const factory Expr.alias</strong>(field0, field1);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[Expr]</code>||
`field1`|<code>String</code>||
#### `.column`
<code><strong>const factory Expr.column</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>String</code>||
#### `.columns`
<code><strong>const factory Expr.columns</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<String></code>||
#### `.dtypeColumn`
<code><strong>const factory Expr.dtypeColumn</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<DataType></code>||
#### `.literal`
<code><strong>const factory Expr.literal</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[LiteralValue]</code>||
#### `.binaryExpr`
<code><strong>const factory Expr.binaryExpr</strong>({<strong>required</strong> left, <strong>required</strong> op, <strong>required</strong> right});</code>


Parameter|Type|Default|
-|-|-|
`left`|<code>[Expr]</code>||
`op`|<code>[Operator]</code>||
`right`|<code>[Expr]</code>||
#### `.cast`
<code><strong>const factory Expr.cast</strong>({<strong>required</strong> expr, <strong>required</strong> dataType, <strong>required</strong> strict});</code>


Parameter|Type|Default|
-|-|-|
`expr`|<code>[Expr]</code>||
`dataType`|<code>[DataType]</code>||
`strict`|<code>bool</code>||
#### `.sort`
<code><strong>const factory Expr.sort</strong>({<strong>required</strong> expr, <i>options</i>});</code>


Parameter|Type|Default|
-|-|-|
`expr`|<code>[Expr]</code>||
`options`|<code>[SortOptions]</code>||
#### `.gather`
<code><strong>const factory Expr.gather</strong>({<strong>required</strong> expr, <strong>required</strong> idx, <strong>required</strong> returnsScalar});</code>


Parameter|Type|Default|
-|-|-|
`expr`|<code>[Expr]</code>||
`idx`|<code>[Expr]</code>||
`returnsScalar`|<code>bool</code>||
#### `.sortBy`
<code><strong>const factory Expr.sortBy</strong>({<strong>required</strong> expr, <i>by</i>, <i>descending</i>});</code>


Parameter|Type|Default|
-|-|-|
`expr`|<code>[Expr]</code>||
`by`|<code>List\<Expr></code>||
`descending`|<code>List\<bool></code>||
#### `.agg`
<code><strong>const factory Expr.agg</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[AggExpr]</code>||
#### `.ternary`
<code><strong>const factory Expr.ternary</strong>({<strong>required</strong> predicate, <strong>required</strong> truthy, <strong>required</strong> falsy});</code>


Parameter|Type|Default|
-|-|-|
`predicate`|<code>[Expr]</code>||
`truthy`|<code>[Expr]</code>||
`falsy`|<code>[Expr]</code>||
#### `.explode`
<code><strong>const factory Expr.explode</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[Expr]</code>||
#### `.filter`
<code><strong>const factory Expr.filter</strong>({<strong>required</strong> input, <strong>required</strong> by});</code>


Parameter|Type|Default|
-|-|-|
`input`|<code>[Expr]</code>||
`by`|<code>[Expr]</code>||
#### `.wildcard`
<code><strong>const factory Expr.wildcard</strong>();</code>


#### `.window`
<code><strong>const factory Expr.window</strong>({<strong>required</strong> function, <strong>required</strong> partitionBy, <strong>required</strong> options});</code>


Parameter|Type|Default|
-|-|-|
`function`|<code>[Expr]</code>||
`partitionBy`|<code>List\<Expr></code>||
`options`|<code>[WindowType]</code>||
#### `.slice`
<code><strong>const factory Expr.slice</strong>({<strong>required</strong> input, <strong>required</strong> offset, <strong>required</strong> length});</code>


Parameter|Type|Default|
-|-|-|
`input`|<code>[Expr]</code>||
`offset`|<code>[Expr]</code>||
`length`|<code>[Expr]</code>||
#### `.exclude`
<code><strong>const factory Expr.exclude</strong>(field0, field1);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[Expr]</code>||
`field1`|<code>List\<Excluded></code>||
#### `.keepName`
<code><strong>const factory Expr.keepName</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[Expr]</code>||
#### `.count`
<code><strong>const factory Expr.count</strong>();</code>


#### `.nth`
<code><strong>const factory Expr.nth</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
#### `.internal`
<code><strong>const factory Expr.internal</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[PExpr]</code>||
### Methods
#### `abs`
<code><strong>[Expr] abs</strong>({<i>hint</i>});</code>

 Similar to [gather] but allows for scalars.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `all`
<code><strong>[Expr] all</strong>({<i>ignoreNulls</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`ignoreNulls`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `any`
<code><strong>[Expr] any</strong>({<i>ignoreNulls</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`ignoreNulls`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `append`
<code><strong>[Expr] append</strong>({<strong>required</strong> other, <i>upcast</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`other`|<code>[Expr]</code>||
`upcast`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `arccos`
<code><strong>[Expr] arccos</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `arccosh`
<code><strong>[Expr] arccosh</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `arcsin`
<code><strong>[Expr] arcsin</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `arcsinh`
<code><strong>[Expr] arcsinh</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `arctan`
<code><strong>[Expr] arctan</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `arctan2`
<code><strong>[Expr] arctan2</strong>({<strong>required</strong> x, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`x`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `arctanh`
<code><strong>[Expr] arctanh</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `argMax`
<code><strong>[Expr] argMax</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `argMin`
<code><strong>[Expr] argMin</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `argSort`
<code><strong>[Expr] argSort</strong>({<i>descending</i>, <i>nullsLast</i>, <i>multithreaded</i>, <i>maintainOrder</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`descending`|<code>bool</code>|`false`|
`nullsLast`|<code>bool</code>|`false`|
`multithreaded`|<code>bool</code>|`true`|
`maintainOrder`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `argUnique`
<code><strong>[Expr] argUnique</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `backwardFill`
<code><strong>[Expr] backwardFill</strong>({<i>limit</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`limit`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `cbrt`
<code><strong>[Expr] cbrt</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `ceil`
<code><strong>[Expr] ceil</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `clip`
<code><strong>[Expr] clip</strong>({<strong>required</strong> min, <strong>required</strong> max, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`min`|<code>[Expr]</code>||
`max`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `clipMax`
<code><strong>[Expr] clipMax</strong>({<strong>required</strong> max, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`max`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `clipMin`
<code><strong>[Expr] clipMin</strong>({<strong>required</strong> min, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`min`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `cos`
<code><strong>[Expr] cos</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `cosh`
<code><strong>[Expr] cosh</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `cot`
<code><strong>[Expr] cot</strong>({<i>hint</i>});</code>

 Calculate the cotangent of this expression.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `count`
<code><strong>[Expr] count</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `cumCount`
<code><strong>[Expr] cumCount</strong>({<i>reverse</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`reverse`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `cumMax`
<code><strong>[Expr] cumMax</strong>({<i>reverse</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`reverse`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `cumMin`
<code><strong>[Expr] cumMin</strong>({<i>reverse</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`reverse`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `cumProd`
<code><strong>[Expr] cumProd</strong>({<i>reverse</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`reverse`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `cumSum`
<code><strong>[Expr] cumSum</strong>({<i>reverse</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`reverse`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `degrees`
<code><strong>[Expr] degrees</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `div`
<code><strong>[Expr] div</strong>({<strong>required</strong> other, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`other`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `dot`
<code><strong>[Expr] dot</strong>({<strong>required</strong> other, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`other`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `dropNans`
<code><strong>[Expr] dropNans</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `dropNulls`
<code><strong>[Expr] dropNulls</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `entropy`
<code><strong>[Expr] entropy</strong>({<strong>required</strong> base, <i>normalize</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`base`|<code>double</code>||
`normalize`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `exp`
<code><strong>[Expr] exp</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `fillNan`
<code><strong>[Expr] fillNan</strong>({<strong>required</strong> value, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`value`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `fillNull`
<code><strong>[Expr] fillNull</strong>({<strong>required</strong> value, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`value`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `floor`
<code><strong>[Expr] floor</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `forwardFill`
<code><strong>[Expr] forwardFill</strong>({<i>limit</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`limit`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `isFinite`
<code><strong>[Expr] isFinite</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isIn`
<code><strong>[Expr] isIn</strong>({<strong>required</strong> other, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`other`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `isNan`
<code><strong>[Expr] isNan</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isNotNan`
<code><strong>[Expr] isNotNan</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isNotNull`
<code><strong>[Expr] isNotNull</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isNull`
<code><strong>[Expr] isNull</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `log`
<code><strong>[Expr] log</strong>({<strong>required</strong> base, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`base`|<code>double</code>||
`hint`|<code>dynamic</code>||
#### `log1P`
<code><strong>[Expr] log1P</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `lowerBound`
<code><strong>[Expr] lowerBound</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `not`
<code><strong>[Expr] not</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `nullCount`
<code><strong>[Expr] nullCount</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `pow`
<code><strong>[Expr] pow</strong>({<strong>required</strong> exponent, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`exponent`|<code>double</code>||
`hint`|<code>dynamic</code>||
#### `product`
<code><strong>[Expr] product</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `radians`
<code><strong>[Expr] radians</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `reshape`
<code><strong>[Expr] reshape</strong>({<strong>required</strong> dims, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`dims`|<code>[Int64List]</code>||
`hint`|<code>dynamic</code>||
#### `reverse`
<code><strong>[Expr] reverse</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `rollingMax`
<code><strong>[Expr] rollingMax</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_max
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `rollingMean`
<code><strong>[Expr] rollingMean</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_mean
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `rollingMedian`
<code><strong>[Expr] rollingMedian</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_median
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `rollingMin`
<code><strong>[Expr] rollingMin</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_min
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `rollingQuantile`
<code><strong>[Expr] rollingQuantile</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_quantile
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `rollingStd`
<code><strong>[Expr] rollingStd</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_std
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `rollingSum`
<code><strong>[Expr] rollingSum</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_sum
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `rollingVar`
<code><strong>[Expr] rollingVar</strong>({<i>windowSize</i>, <i>minPeriods</i>, <i>weights</i>, <i>center</i>, <i>by</i>, <i>closedWindow</i>, <i>hint</i>});</code>

 TODO: Docs for rolling_var
Parameter|Type|Default|
-|-|-|
`windowSize`|<code>Duration?</code>||
`minPeriods`|<code>int</code>|`1`|
`weights`|<code>Float64List?</code>||
`center`|<code>bool</code>|`false`|
`by`|<code>String?</code>||
`closedWindow`|<code>[ClosedWindow?]</code>||
`hint`|<code>dynamic</code>||
#### `round`
<code><strong>[Expr] round</strong>({<strong>required</strong> decimals, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`decimals`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `roundSigFigs`
<code><strong>[Expr] roundSigFigs</strong>({<strong>required</strong> digits, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`digits`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `setSortedFlag`
<code><strong>[Expr] setSortedFlag</strong>({<strong>required</strong> sorted, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`sorted`|<code>[IsSorted]</code>||
`hint`|<code>dynamic</code>||
#### `shift`
<code><strong>[Expr] shift</strong>({<strong>required</strong> n, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`n`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `shiftAndFill`
<code><strong>[Expr] shiftAndFill</strong>({<strong>required</strong> n, <strong>required</strong> fillValue, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`n`|<code>[Expr]</code>||
`fillValue`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `shrinkDtype`
<code><strong>[Expr] shrinkDtype</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `sin`
<code><strong>[Expr] sin</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `sinh`
<code><strong>[Expr] sinh</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `sqrt`
<code><strong>[Expr] sqrt</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `tan`
<code><strong>[Expr] tan</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `tanh`
<code><strong>[Expr] tanh</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `toDot`
<code><strong>String toDot</strong>({<i>hint</i>});</code>

 Returns a dot representation of this expression.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `toPhysical`
<code><strong>[Expr] toPhysical</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `unique`
<code><strong>[Expr] unique</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `uniqueStable`
<code><strong>[Expr] uniqueStable</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `upperBound`
<code><strong>[Expr] upperBound</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `valueCounts`
<code><strong>[Expr] valueCounts</strong>({<i>sort</i>, <i>parallel</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`sort`|<code>bool</code>|`false`|
`parallel`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `strConcat`
<code><strong>[Expr] strConcat</strong>({<strong>required</strong> delimiter, <i>ignoreNulls</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`delimiter`|<code>String</code>||
`ignoreNulls`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `strContains`
<code><strong>[Expr] strContains</strong>({<strong>required</strong> pat, <i>strict</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`strict`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `strContainsLiteral`
<code><strong>[Expr] strContainsLiteral</strong>({<strong>required</strong> pat, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strCountMatches`
<code><strong>[Expr] strCountMatches</strong>({<strong>required</strong> pat, <i>literal</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`literal`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `strEndsWith`
<code><strong>[Expr] strEndsWith</strong>({<strong>required</strong> pat, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strExplode`
<code><strong>[Expr] strExplode</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `strExtract`
<code><strong>[Expr] strExtract</strong>({<strong>required</strong> pat, <strong>required</strong> groupIndex, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>String</code>||
`groupIndex`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `strExtractAll`
<code><strong>[Expr] strExtractAll</strong>({<strong>required</strong> pat, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strLenBytes`
<code><strong>[Expr] strLenBytes</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `strLenChars`
<code><strong>[Expr] strLenChars</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `strReplace`
<code><strong>[Expr] strReplace</strong>({<strong>required</strong> pat, <strong>required</strong> val, <i>literal</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`val`|<code>[Expr]</code>||
`literal`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `strReplaceAll`
<code><strong>[Expr] strReplaceAll</strong>({<strong>required</strong> pat, <strong>required</strong> val, <i>literal</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`val`|<code>[Expr]</code>||
`literal`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `strReplaceN`
<code><strong>[Expr] strReplaceN</strong>({<strong>required</strong> pat, <strong>required</strong> val, <i>literal</i>, <strong>required</strong> n, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>[Expr]</code>||
`val`|<code>[Expr]</code>||
`literal`|<code>bool</code>|`false`|
`n`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `strSlice`
<code><strong>[Expr] strSlice</strong>({<strong>required</strong> start, <i>length</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`start`|<code>int</code>||
`length`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `strSplit`
<code><strong>[Expr] strSplit</strong>({<strong>required</strong> by, <i>inclusive</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`by`|<code>[Expr]</code>||
`inclusive`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `strSplitExact`
<code><strong>[Expr] strSplitExact</strong>({<strong>required</strong> by, <strong>required</strong> n, <i>inclusive</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`by`|<code>[Expr]</code>||
`n`|<code>int</code>||
`inclusive`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `strSplitn`
<code><strong>[Expr] strSplitn</strong>({<strong>required</strong> by, <strong>required</strong> n, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`by`|<code>[Expr]</code>||
`n`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `strStripChars`
<code><strong>[Expr] strStripChars</strong>({<strong>required</strong> matches, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`matches`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strStripCharsEnd`
<code><strong>[Expr] strStripCharsEnd</strong>({<strong>required</strong> matches, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`matches`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strStripCharsStart`
<code><strong>[Expr] strStripCharsStart</strong>({<strong>required</strong> matches, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`matches`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strStripPrefix`
<code><strong>[Expr] strStripPrefix</strong>({<strong>required</strong> prefix, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`prefix`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strStripSuffix`
<code><strong>[Expr] strStripSuffix</strong>({<strong>required</strong> suffix, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`suffix`|<code>[Expr]</code>||
`hint`|<code>dynamic</code>||
#### `strToDate`
<code><strong>[Expr] strToDate</strong>({<i>format</i>, <i>strict</i>, <i>exact</i>, <i>cache</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`format`|<code>String?</code>||
`strict`|<code>bool</code>|`true`|
`exact`|<code>bool</code>|`true`|
`cache`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `strToDatetime`
<code><strong>[Expr] strToDatetime</strong>({<i>timeUnit</i>, <i>timeZone</i>, <i>format</i>, <i>strict</i>, <i>exact</i>, <i>cache</i>, <i>ambiguous</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`timeUnit`|<code>[TimeUnit?]</code>||
`timeZone`|<code>String?</code>||
`format`|<code>String?</code>||
`strict`|<code>bool</code>|`true`|
`exact`|<code>bool</code>|`true`|
`cache`|<code>bool</code>|`true`|
`ambiguous`|<code>[Ambiguous]</code>|`Ambiguous.raise`|
`hint`|<code>dynamic</code>||
#### `strToInteger`
<code><strong>[Expr] strToInteger</strong>({<strong>required</strong> base, <i>strict</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`base`|<code>int</code>||
`strict`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `strToLowercase`
<code><strong>[Expr] strToLowercase</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `strToTime`
<code><strong>[Expr] strToTime</strong>({<i>format</i>, <i>strict</i>, <i>exact</i>, <i>cache</i>, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`format`|<code>String?</code>||
`strict`|<code>bool</code>|`true`|
`exact`|<code>bool</code>|`true`|
`cache`|<code>bool</code>|`true`|
`hint`|<code>dynamic</code>||
#### `strToUppercase`
<code><strong>[Expr] strToUppercase</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `strptime`
<code><strong>[Expr] strptime</strong>({<strong>required</strong> dtype, <i>format</i>, <i>strict</i>, <i>exact</i>, <i>cache</i>, <i>ambiguous</i>, <i>hint</i>});</code>

 Formats this datetime-compatible value to a string representation.
Parameter|Type|Default|
-|-|-|
`dtype`|<code>[DataType]</code>||
`format`|<code>String?</code>||
`strict`|<code>bool</code>|`true`|
`exact`|<code>bool</code>|`true`|
`cache`|<code>bool</code>|`true`|
`ambiguous`|<code>[Ambiguous]</code>|`Ambiguous.raise`|
`hint`|<code>dynamic</code>||

## `ExprExt` extensions
### Properties
#### `aggGroups`
<code>[Expr] get aggGroups;</code>


#### `explode`
<code>[Expr] get explode;</code>


#### `flatten`
<code>[Expr] get flatten;</code>

 Alias for [explode].
#### `first`
<code>[Expr] get first;</code>


#### `last`
<code>[Expr] get last;</code>


#### `implode`
<code>[Expr] get implode;</code>


#### `nUnique`
<code>[Expr] get nUnique;</code>


#### `nanMax`
<code>[Expr] get nanMax;</code>


#### `nanMin`
<code>[Expr] get nanMin;</code>


#### `str`
<code>[StrNamespace] get str;</code>


### Methods
#### `<`
<code><strong>[Expr] <</strong>(other);</code>

 Returns an expression evaluating whether this is less than [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `<=`
<code><strong>[Expr] <=</strong>(other);</code>

 Returns an expression evaluating whether this is no greater than [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `>`
<code><strong>[Expr] ></strong>(other);</code>

 Returns an expression evaluating whether this is greater than [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `>=`
<code><strong>[Expr] >=</strong>(other);</code>

 Returns an expression evaluating whether this is no lesser than [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `+`
<code><strong>[Expr] +</strong>(other);</code>

 Returns an expression representing the sum of this and [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `-`
<code><strong>[Expr] -</strong>(other);</code>

 Returns an expression representing the difference of this and [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `*`
<code><strong>[Expr] *</strong>(other);</code>

 Returns an expression representing the product of this and [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `/`
<code><strong>[Expr] /</strong>(other);</code>

 Returns an expression representing the division of this and [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `~/`
<code><strong>[Expr] ~/</strong>(other);</code>

 Returns an expression representing the integral division of this and [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `%`
<code><strong>[Expr] %</strong>(other);</code>

 Performs a modulo operation on this and [other].
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `&`
<code><strong>[Expr] &</strong>(other);</code>

 Returns an expression evaluating whether both this and [other] are true.
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `|`
<code><strong>[Expr] |</strong>(other);</code>

 Returns an expression evaluating whether either this or [other] is true.
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `^`
<code><strong>[Expr] ^</strong>(other);</code>

 Returns an expression evaluating whether at most one of this and [other] is true,
 i.e. whether this and [other] are not equal.
Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `head`
<code><strong>[Expr] head</strong>({<i>length</i>});</code>


Parameter|Type|Default|
-|-|-|
`length`|<code>int</code>|`10`|
#### `tail`
<code><strong>[Expr] tail</strong>({<i>length</i>});</code>


Parameter|Type|Default|
-|-|-|
`length`|<code>int</code>|`10`|
#### `alias`
<code><strong>[Expr] alias</strong>(name);</code>


Parameter|Type|Default|
-|-|-|
`name`|<code>String</code>||
#### `cast`
<code><strong>[Expr] cast</strong>(dataType, {<i>strict</i>});</code>

 Attempt to [cast](https://docs.pola.rs/user-guide/expressions/casting) a column's [DataType] to a new one.

 By default, strict mode is enabled and restricts certain types of casts:
 - String-to-numeric casts will throw if the string cannot be parsed as a number.
 - Downcasts (e.g. [int64] to [int32]) that result in overflowing values will throw.

 When strict mode is disabled, these casts will return null instead.
Parameter|Type|Default|
-|-|-|
`dataType`|<code>[DataType]</code>||
`strict`|<code>bool</code>|`true`|
#### `equalMissing`
<code><strong>[Expr] equalMissing</strong>(other);</code>


Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `notEqualMissing`
<code><strong>[Expr] notEqualMissing</strong>(other);</code>


Parameter|Type|Default|
-|-|-|
`other`|<code>Object?</code>||
#### `exclude`
<code><strong>[Expr] exclude</strong>(columns);</code>


Parameter|Type|Default|
-|-|-|
`columns`|<code>Iterable\<String></code>||
#### `filter`
<code><strong>[Expr] filter</strong>({<strong>required</strong> by});</code>


Parameter|Type|Default|
-|-|-|
`by`|<code>Object?</code>||
#### `get`
<code><strong>[Expr] get</strong>(idx);</code>


Parameter|Type|Default|
-|-|-|
`idx`|<code>Object?</code>||
#### `gather`
<code><strong>[Expr] gather</strong>(idx);</code>


Parameter|Type|Default|
-|-|-|
`idx`|<code>Object?</code>||
#### `slice`
<code><strong>[Expr] slice</strong>(offset, length);</code>


Parameter|Type|Default|
-|-|-|
`offset`|<code>int</code>||
`length`|<code>int</code>||
#### `sort`
<code><strong>[Expr] sort</strong>({<i>descending</i>, <i>multithreaded</i>, <i>maintainOrder</i>, <i>nullsLast</i>});</code>


Parameter|Type|Default|
-|-|-|
`descending`|<code>bool</code>|`false`|
`multithreaded`|<code>bool</code>|`true`|
`maintainOrder`|<code>bool</code>|`false`|
`nullsLast`|<code>bool</code>|`false`|
#### `std`
<code><strong>[Expr] std</strong>(ddof);</code>

 Calculate the standard deviation of this expression with the specified
 [ddof] or [delta degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_(statistics)).
Parameter|Type|Default|
-|-|-|
`ddof`|<code>int</code>||

[Expr]: /reference/classes/expr
[LiteralValue]: /reference/classes/literalvalue
[Operator]: /reference/enums/operator
[DataType]: /reference/classes/datatype
[SortOptions]: /reference/classes/sortoptions
[AggExpr]: /reference/classes/aggexpr
[WindowType]: /reference/classes/windowtype
[PExpr]: /reference/classes/pexpr
[dynamic]: #
[Int64List]: /reference/classes/int64list
[ClosedWindow?]: /reference/enums/closedwindow
[IsSorted]: /reference/enums/issorted
[TimeUnit?]: /reference/enums/timeunit
[Ambiguous]: /reference/enums/ambiguous
[StrNamespace]: /reference/classes/strnamespace