---
title: series
description: |
  
---
<span class="dart-code"><strong>[Series] series\<T></strong>(<span class="nobr">List\<T> data</span>, {<span class="nobr">String <i>name</i></span>, <span class="nobr">[DataType] <i>dtype</i></span>});</span>


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