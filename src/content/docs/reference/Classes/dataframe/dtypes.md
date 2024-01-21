---
title: "dtypes"
description: |
   Returns the datatypes of this dataframe's columns.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[List]\<[DataType]> dtypes</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the datatypes of this dataframe's columns.
### Implementation
```dart
/// Returns the datatypes of this dataframe's columns.
  List<DataType> dtypes({dynamic hint}) => RustLib.instance.api.dataFrameDtypes(
        that: this,
      );
```

[DataType]: /reference/classes/datatype/
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html