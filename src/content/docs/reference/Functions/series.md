---
title: series
description: |
  
---
<code><strong>[Series] series</strong>(data, {<i>name</i>, <i>dtype</i>});</code>



Parameter|Type|Default|
-|-|-|
`data`|<code>List\<T></code>||
`name`|<code>String</code>|`''`|
`dtype`|<code>[DataType]</code>|`const DataType.utf8()`|

### Implementation
```dart
Series series<T>(
  List<T> data, {
  String name = '',
  DataType dtype = const DataType.utf8(),
}) =>
    Series.ofLits(values: LiteralsExt.from(data, dtype), name: name);
```

[Series]: /reference/classes/series
[DataType]: /reference/classes/datatype