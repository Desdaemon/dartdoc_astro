---
title: "DataFrame"
description: |
  
---


### Constructors
#### `.dcoDecode`
<code><strong>DataFrame.dcoDecode</strong>(wire);</code>


Parameter|Type|Default|
-|-|-|
`wire`|<code>dynamic</code>||
#### `.sseDecode`
<code><strong>DataFrame.sseDecode</strong>(ptr, externalSizeOnNative);</code>


Parameter|Type|Default|
-|-|-|
`ptr`|<code>int</code>||
`externalSizeOnNative`|<code>int</code>||
### Methods
#### `clone`
<code><strong>[DataFrame] clone</strong>({<i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `column`
<code><strong>[Series] column</strong>({<strong>required</strong> column, <i>hint</i>});</code>

 Select a single column by name.

 Note: A clone of the column is returned, rather than a reference.
Parameter|Type|Default|
-|-|-|
`column`|<code>String</code>||
`hint`|<code>dynamic</code>||
#### `columnAt`
<code><strong>[Series] columnAt</strong>({<strong>required</strong> index, <i>hint</i>});</code>

 Select the column at the given index.
Parameter|Type|Default|
-|-|-|
`index`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `columns`
<code><strong>[VecSeries] columns</strong>({<strong>required</strong> columns, <i>hint</i>});</code>

 Select multiple columns by name.

 Note: Clones of the columns are returned, rather than a reference.
Parameter|Type|Default|
-|-|-|
`columns`|<code>List\<String></code>||
`hint`|<code>dynamic</code>||
#### `describe`
<code><strong>Future\<DataFrame> describe</strong>({<i>percentiles</i>, <i>hint</i>});</code>

 Output statistics about this dataframe.
Parameter|Type|Default|
-|-|-|
`percentiles`|<code>Float64List?</code>||
`hint`|<code>dynamic</code>||
#### `drop`
<code><strong>[DataFrame] drop</strong>({<strong>required</strong> column, <i>hint</i>});</code>

 Drops a column by name, producing a new dataframe.
Parameter|Type|Default|
-|-|-|
`column`|<code>String</code>||
`hint`|<code>dynamic</code>||
#### `dropInPlace`
<code><strong>[Series] dropInPlace</strong>({<strong>required</strong> column, <i>hint</i>});</code>

 Drops a column in-place and returns it.
Parameter|Type|Default|
-|-|-|
`column`|<code>String</code>||
`hint`|<code>dynamic</code>||
#### `dtypes`
<code><strong>List\<DataType> dtypes</strong>({<i>hint</i>});</code>

 Returns the datatypes of this dataframe's columns.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `dump`
<code><strong>String dump</strong>({<i>hint</i>});</code>

 Dump the contents of this entire dataframe.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `estimatedSize`
<code><strong>int estimatedSize</strong>({<i>hint</i>});</code>

 Returns the amount of bytes occupied by this series.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `getColumnNames`
<code><strong>List\<String> getColumnNames</strong>({<i>hint</i>});</code>

 Get the names of this dataframe's columns.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `getColumns`
<code><strong>[VecSeries] getColumns</strong>({<i>hint</i>});</code>

 Get all columns of this dataframe.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `getRow`
<code><strong>List\<dynamic> getRow</strong>({<strong>required</strong> index, <i>hint</i>});</code>

 Get a row of data from this dataframe.

 Prefer other functions to this inside a hot loop, as this function performs
 data copies and conversions to and from the native representation.
Parameter|Type|Default|
-|-|-|
`index`|<code>int</code>||
`hint`|<code>dynamic</code>||
#### `head`
<code><strong>[DataFrame] head</strong>({<i>length</i>, <i>hint</i>});</code>

 Returns the first few rows of this dataframe.
Parameter|Type|Default|
-|-|-|
`length`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `height`
<code><strong>int height</strong>({<i>hint</i>});</code>

 Returns the height of this dataframe, aka the number of rows.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `isEmpty`
<code><strong>bool isEmpty</strong>({<i>hint</i>});</code>

 Returns whether this dataframe has no rows.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `iter`
<code><strong>Stream\<List\<dynamic>> iter</strong>({<i>hint</i>});</code>

 Iterate through this dataframe's rows.

 Use [parseRow] to retrieve the canonical values for these rows.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `lazy`
<code><strong>[LazyFrame] lazy</strong>({<i>projectionPushdown</i>, <i>predicatePushdown</i>, <i>typeCoercion</i>, <i>simplifyExpressions</i>, <i>slicePushdown</i>, <i>streaming</i>, <i>hint</i>});</code>

 Returns a [LazyFrame] to which operations can be applied lazily.
 As opposed to [LazyFrame], [DataFrame] by default applies its operations eagerly.
Parameter|Type|Default|
-|-|-|
`projectionPushdown`|<code>bool?</code>||
`predicatePushdown`|<code>bool?</code>||
`typeCoercion`|<code>bool?</code>||
`simplifyExpressions`|<code>bool?</code>||
`slicePushdown`|<code>bool?</code>||
`streaming`|<code>bool?</code>||
`hint`|<code>dynamic</code>||
#### `max`
<code><strong>Future\<DataFrame> max</strong>({<i>hint</i>});</code>

 Aggregate the columns to their maximum values.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `DataFrame.ofLits`
<code><strong>static [DataFrame] ofLits</strong>({<i>series</i>, <i>hint</i>});</code>

 Returns a new, empty dataframe.
Parameter|Type|Default|
-|-|-|
`series`|<code>List\<(String, Literals)>?</code>||
`hint`|<code>dynamic</code>||
#### `reverse`
<code><strong>[DataFrame] reverse</strong>({<i>hint</i>});</code>

 Returns a dataframe with columns from this dataframe in reverse order.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `sample`
<code><strong>Future\<DataFrame> sample</strong>({<strong>required</strong> n, <i>withReplacement</i>, <i>shuffle</i>, <i>seed</i>, <i>hint</i>});</code>

 Sample [n] datapoints from this dataframe.
Parameter|Type|Default|
-|-|-|
`n`|<code>[Series]</code>||
`withReplacement`|<code>bool</code>|`false`|
`shuffle`|<code>bool</code>|`false`|
`seed`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `schema`
<code><strong>[Schema] schema</strong>({<i>hint</i>});</code>

 Returns the [Schema] of this dataframe.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `select`
<code><strong>[DataFrame] select</strong>({<strong>required</strong> columns, <i>hint</i>});</code>

 Makes a new dataframe with the specified columns from this dataframe.
Parameter|Type|Default|
-|-|-|
`columns`|<code>List\<String></code>||
`hint`|<code>dynamic</code>||
#### `shape`
<code><strong>(int, int) shape</strong>({<i>hint</i>});</code>

 Returns the height and width of this dataframe.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `sortInPlace`
<code><strong>void sortInPlace</strong>({<i>byColumn</i>, <i>descending</i>, <i>maintainOrder</i>, <i>hint</i>});</code>

 Sorts this dataframe by the specified columns.
Parameter|Type|Default|
-|-|-|
`byColumn`|<code>List\<String></code>|`const []`|
`descending`|<code>List\<bool></code>|`const []`|
`maintainOrder`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||
#### `tail`
<code><strong>[DataFrame] tail</strong>({<i>length</i>, <i>hint</i>});</code>

 Returns the last few rows of this dataframe.
Parameter|Type|Default|
-|-|-|
`length`|<code>int?</code>||
`hint`|<code>dynamic</code>||
#### `width`
<code><strong>int width</strong>({<i>hint</i>});</code>

 Returns the width of this dataframe, aka the number of columns.
Parameter|Type|Default|
-|-|-|
`hint`|<code>dynamic</code>||
#### `withRowCount`
<code><strong>[DataFrame] withRowCount</strong>({<strong>required</strong> name, <i>offset</i>, <i>hint</i>});</code>

 Add a new column at index 0 denoting the row number.
Parameter|Type|Default|
-|-|-|
`name`|<code>String</code>||
`offset`|<code>int?</code>||
`hint`|<code>dynamic</code>||

[dynamic]: #
[DataFrame]: /reference/classes/dataframe
[Series]: /reference/classes/series
[VecSeries]: /reference/classes/vecseries
[LazyFrame]: /reference/classes/lazyframe
[Schema]: /reference/classes/schema
[(int, int)]: #
[void]: #