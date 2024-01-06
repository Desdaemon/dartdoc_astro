---
title: "DataType"
description: |
   Supported datatypes in a [DataFrame].
---
 Supported datatypes in a [DataFrame].

### Constructors
#### `.boolean`
<code><strong>const factory DataType.boolean</strong>();</code>

 Boolean
#### `.uint8`
<code><strong>const factory DataType.uint8</strong>();</code>

 Unsigned 8-bit integer
#### `.uint16`
<code><strong>const factory DataType.uint16</strong>();</code>

 Unsigned 16-bit integer
#### `.uint32`
<code><strong>const factory DataType.uint32</strong>();</code>

 Unsigned 32-bit integer
#### `.uint64`
<code><strong>const factory DataType.uint64</strong>();</code>

 Unsigned 64-bit integer
#### `.int8`
<code><strong>const factory DataType.int8</strong>();</code>

 Signed 8-bit integer
#### `.int16`
<code><strong>const factory DataType.int16</strong>();</code>

 Signed 16-bit integer
#### `.int32`
<code><strong>const factory DataType.int32</strong>();</code>

 Signed 32-bit integer
#### `.int64`
<code><strong>const factory DataType.int64</strong>();</code>

 Signed 64-bit integer, the default [int] on native platforms.
#### `.float32`
<code><strong>const factory DataType.float32</strong>();</code>

 Single-precision floating point number
#### `.float64`
<code><strong>const factory DataType.float64</strong>();</code>

 Double-precision floating point number, aka a [double].
#### `.utf8`
<code><strong>const factory DataType.utf8</strong>();</code>

 String data
#### `.binary`
<code><strong>const factory DataType.binary</strong>();</code>

 Raw bytes.
#### `.date`
<code><strong>const factory DataType.date</strong>();</code>

 A 32-bit date representing the elapsed time since UNIX epoch (1970-01-01)
 in days (32 bits).
#### `.datetime`
<code><strong>const factory DataType.datetime</strong>(field0,[<i>field1</i>]);</code>

 A 64-bit date representing the elapsed time since UNIX epoch (1970-01-01)
 in the given timeunit (64 bits), with optional timezone.
Parameter|Type|Default|
-|-|-|
`field0`|<code>[TimeUnit]</code>||
`field1`|<code>String?</code>||
#### `.duration`
<code><strong>const factory DataType.duration</strong>(field0);</code>

 64-bit integer representing difference between times in milliseconds or nanoseconds
Parameter|Type|Default|
-|-|-|
`field0`|<code>[TimeUnit]</code>||
#### `.time`
<code><strong>const factory DataType.time</strong>();</code>

 A 64-bit time representing the elapsed time since midnight in nanoseconds
#### `.list`
<code><strong>const factory DataType.list</strong>(field0);</code>

 A typed list.
Parameter|Type|Default|
-|-|-|
`field0`|<code>[DataType]</code>||
#### `.struct`
<code><strong>const factory DataType.struct</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<Field></code>||
#### `.Null`
<code><strong>const factory DataType.Null</strong>();</code>

 Null value.
#### `.unknown`
<code><strong>const factory DataType.unknown</strong>();</code>

 Some logical types we cannot know statically, e.g. Datetime


[TimeUnit]: /reference/enums/timeunit
[DataType]: /reference/classes/datatype