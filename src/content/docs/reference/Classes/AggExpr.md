---
title: "AggExpr"
description: |
  
---



## Constructors
### `.min`
<code><strong>const factory AggExpr.min</strong>({<strong>required</strong> input, <strong>required</strong> propagateNans});</code>


Parameter|Type|Default
-|-|-
`input`|<code>[Expr]</code>|``|
`propagateNans`|<code>bool</code>|``|


### `.max`
<code><strong>const factory AggExpr.max</strong>({<strong>required</strong> input, <strong>required</strong> propagateNans});</code>


Parameter|Type|Default
-|-|-
`input`|<code>[Expr]</code>|``|
`propagateNans`|<code>bool</code>|``|


### `.median`
<code><strong>const factory AggExpr.median</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.nUnique`
<code><strong>const factory AggExpr.nUnique</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.first`
<code><strong>const factory AggExpr.first</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.last`
<code><strong>const factory AggExpr.last</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.mean`
<code><strong>const factory AggExpr.mean</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.implode`
<code><strong>const factory AggExpr.implode</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.count`
<code><strong>const factory AggExpr.count</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.quantile`
<code><strong>const factory AggExpr.quantile</strong>({<strong>required</strong> expr, <strong>required</strong> quantile, <strong>required</strong> interpol});</code>


Parameter|Type|Default
-|-|-
`expr`|<code>[Expr]</code>|``|
`quantile`|<code>[Expr]</code>|``|
`interpol`|<code>[QuantileInterpolOptions]</code>|``|


### `.sum`
<code><strong>const factory AggExpr.sum</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.aggGroups`
<code><strong>const factory AggExpr.aggGroups</strong>(field0);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|


### `.std`
<code><strong>const factory AggExpr.std</strong>(field0, field1);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|
`field1`|<code>int</code>|``|


### `.Var`
<code><strong>const factory AggExpr.Var</strong>(field0, field1);</code>


Parameter|Type|Default
-|-|-
`field0`|<code>[Expr]</code>|``|
`field1`|<code>int</code>|``|


## Methods

[Expr]: /reference/classes/expr
[QuantileInterpolOptions]: /reference/enums/quantileinterpoloptions