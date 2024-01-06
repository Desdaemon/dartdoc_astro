---
title: "Literals"
description: |
  
---


### Constructors
#### `.int64`
<code><strong>const factory Literals.int64</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[Int64List]</code>||
#### `.nullInt64`
<code><strong>const factory Literals.nullInt64</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<int?></code>||
#### `.float64`
<code><strong>const factory Literals.float64</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>Float64List</code>||
#### `.nullFloat64`
<code><strong>const factory Literals.nullFloat64</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<double?></code>||
#### `.boolean`
<code><strong>const factory Literals.boolean</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<bool></code>||
#### `.duration`
<code><strong>const factory Literals.duration</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<Duration></code>||
#### `.nullDuration`
<code><strong>const factory Literals.nullDuration</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<Duration?></code>||
#### `.stringLike`
<code><strong>const factory Literals.stringLike</strong>(field0, field1);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<String></code>||
`field1`|<code>[DataType]</code>||
#### `.nullStringLike`
<code><strong>const factory Literals.nullStringLike</strong>(field0, field1);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>List\<String?></code>||
`field1`|<code>[DataType]</code>||
#### `.series`
<code><strong>const factory Literals.series</strong>(field0);</code>


Parameter|Type|Default|
-|-|-|
`field0`|<code>[PSeries]</code>||

## `LiteralsExt` extensions
### Methods
#### `LiteralsExt.from`
<code><strong>static [Literals] from</strong>(value, dtype);</code>


Parameter|Type|Default|
-|-|-|
`value`|<code>dynamic</code>||
`dtype`|<code>[DataType]</code>||

[Int64List]: /reference/classes/int64list
[DataType]: /reference/classes/datatype
[PSeries]: /reference/classes/pseries
[Literals]: /reference/classes/literals
[dynamic]: #