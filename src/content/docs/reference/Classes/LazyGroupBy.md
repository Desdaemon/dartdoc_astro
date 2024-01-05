---
title: "LazyGroupBy"
description: |
  
---



## Constructors
### `.dcoDecode`
<code><strong>LazyGroupBy.dcoDecode</strong>(wire);</code>


Parameter|Type|Default
-|-|-
`wire`|<code>dynamic</code>|``|


### `.sseDecode`
<code><strong>LazyGroupBy.sseDecode</strong>(ptr, externalSizeOnNative);</code>


Parameter|Type|Default
-|-|-
`ptr`|<code>int</code>|``|
`externalSizeOnNative`|<code>int</code>|``|


## Methods
### `agg`
<code><strong>[LazyFrame] agg</strong>({<strong>required</strong> exprs, <i>hint</i>});</code>

 Group by and aggregate.

 Select a column with [col] and choose an aggregation. If you want to aggregate all columns
 use <code>[col]\("*")</code>.
Parameter|Type|Default
-|-|-
`exprs`|<code>List\<Expr></code>|``|
`hint`|<code>dynamic</code>|``|


### `head`
<code><strong>[LazyFrame] head</strong>({<i>n</i>, <i>hint</i>});</code>

 Return the first [n] rows of each group.
Parameter|Type|Default
-|-|-
`n`|<code>int?</code>|``|
`hint`|<code>dynamic</code>|``|


### `tail`
<code><strong>[LazyFrame] tail</strong>({<i>n</i>, <i>hint</i>});</code>

 Return the last [n] rows of each group.
Parameter|Type|Default
-|-|-
`n`|<code>int?</code>|``|
`hint`|<code>dynamic</code>|``|



[dynamic]: #
[LazyFrame]: /reference/classes/lazyframe