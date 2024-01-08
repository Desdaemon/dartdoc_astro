---
title: "columnNames"
description: |
   Get the names of this dataframe's columns.
---
<span class="dart-code"><strong>List&lt;String&gt; columnNames</strong>();</span>

 Get the names of this dataframe's columns.
### Implementation
```dart
/// Get the names of this dataframe's columns.
  List<String> get columnNames => RustLib.instance.api.dataFrameColumnNames(
        that: this,
      );
```

