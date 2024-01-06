---
title: "LiteralValue"
description: |
   Literal values for use in [Expr]essions.
---
 Literal values for use in [Expr]essions.

### Constructors
#### `.Null`
<code><strong>const factory LiteralValue.Null</strong>();</code>

 Null value.
#### `.boolean`
<code><strong>const factory LiteralValue.boolean</strong>(field0);</code>

 A binary true or false.
Parameter|Type|Default|
-|-|-|
`field0`|<code>bool</code>||
#### `.utf8`
<code><strong>const factory LiteralValue.utf8</strong>(field0);</code>

 A UTF8 encoded string type.
Parameter|Type|Default|
-|-|-|
`field0`|<code>String</code>||
#### `.binary`
<code><strong>const factory LiteralValue.binary</strong>(field0);</code>

 A raw binary array
Parameter|Type|Default|
-|-|-|
`field0`|<code>Uint8List</code>||
#### `.uint32`
<code><strong>const factory LiteralValue.uint32</strong>(field0);</code>

 An unsigned 32-bit integer number.
Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
#### `.uint64`
<code><strong>const factory LiteralValue.uint64</strong>(field0);</code>

 An unsigned 64-bit integer number.
Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
#### `.int32`
<code><strong>const factory LiteralValue.int32</strong>(field0);</code>

 A 32-bit integer number.
Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
#### `.int64`
<code><strong>const factory LiteralValue.int64</strong>(field0);</code>

 A 64-bit integer number.
Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
#### `.float32`
<code><strong>const factory LiteralValue.float32</strong>(field0);</code>

 A 32-bit floating point number.
Parameter|Type|Default|
-|-|-|
`field0`|<code>double</code>||
#### `.float64`
<code><strong>const factory LiteralValue.float64</strong>(field0);</code>

 A 64-bit floating point number.
Parameter|Type|Default|
-|-|-|
`field0`|<code>double</code>||
#### `.range`
<code><strong>const factory LiteralValue.range</strong>({<strong>required</strong> low, <strong>required</strong> high, <strong>required</strong> dataType});</code>

 A range between integers.
Parameter|Type|Default|
-|-|-|
`low`|<code>int</code>||
`high`|<code>int</code>||
`dataType`|<code>[DataType]</code>||
#### `.dateTime`
<code><strong>const factory LiteralValue.dateTime</strong>(field0, field1,[<i>field2</i>]);</code>

 Datetimes, with optional timezone.
Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
`field1`|<code>[TimeUnit]</code>||
`field2`|<code>String?</code>||
#### `.duration`
<code><strong>const factory LiteralValue.duration</strong>(field0, field1);</code>

 Durations.
Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
`field1`|<code>[TimeUnit]</code>||
#### `.series`
<code><strong>const factory LiteralValue.series</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[SpecialEqPSeries]</code>||
#### `.date`
<code><strong>const factory LiteralValue.date</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
#### `.time`
<code><strong>const factory LiteralValue.time</strong>(field0);</code>

 Nanoseconds elapsed since midnight.
Parameter|Type|Default|
-|-|-|
`field0`|<code>int</code>||
### Methods
#### `LiteralValue.fromSeries`
<code><strong>static [LiteralValue] fromSeries</strong>({<strong>required</strong> series, <i>hint</i>});</code>


Parameter|Type|Default|
-|-|-|
`series`|<code>[Series]</code>||
`hint`|<code>dynamic</code>||

[DataType]: /reference/classes/datatype
[TimeUnit]: /reference/enums/timeunit
[SpecialEqPSeries]: /reference/classes/specialeqpseries
[LiteralValue]: /reference/classes/literalvalue
[Series]: /reference/classes/series
[dynamic]: #