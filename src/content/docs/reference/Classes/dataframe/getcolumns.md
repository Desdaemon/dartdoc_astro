---
title: "getColumns"
description: |
   Get all columns of this dataframe.
---
<span class="dart-code"><strong>[VecSeries] getColumns</strong>();</span>

 Get all columns of this dataframe.
### Implementation
```dart
/// Get all columns of this dataframe.
  VecSeries get getColumns => RustLib.instance.api.dataFrameGetColumns(
        that: this,
      );
```

[VecSeries]: /reference/classes/vecseries/