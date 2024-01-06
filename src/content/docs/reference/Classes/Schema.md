---
title: "Schema"
description: |
  
---


### Constructors
#### `.dcoDecode`
<code><strong>Schema.dcoDecode</strong>(wire);</code>


Parameter|Type|Default|
-|-|-|
`wire`|<code>dynamic</code>||
#### `.sseDecode`
<code><strong>Schema.sseDecode</strong>(ptr, externalSizeOnNative);</code>


Parameter|Type|Default|
-|-|-|
`ptr`|<code>int</code>||
`externalSizeOnNative`|<code>int</code>||
### Methods
#### `Schema.of`
<code><strong>static [Schema] of</strong>({<strong>required</strong> fields, <i>hint</i>});</code>

 Create a schema from a list of [Field]s.
Parameter|Type|Default|
-|-|-|
`fields`|<code>List\<Field></code>||
`hint`|<code>dynamic</code>||

[dynamic]: #
[Schema]: /reference/classes/schema