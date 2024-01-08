---
title: "cast"
description: |
   Casts this series into one with the specified datatype.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] cast</strong>({<span class="nobr"><strong>required</strong> [DataType] dtype</span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Casts this series into one with the specified datatype.
### Implementation
```dart
/// Casts this series into one with the specified datatype.
  Series cast({required DataType dtype, bool strict = true, dynamic hint}) =>
      RustLib.instance.api.seriesCast(
        that: this,
        dtype: dtype,
        strict: strict,
      );
```

[Series]: /reference/classes/series
[DataType]: /reference/classes/datatype
[dynamic]: #