---
title: "select"
description: |
   Makes a new dataframe with the specified columns from this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] select</strong>({<span class="nobr"><strong>required</strong> List&lt;String&gt; columns</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Makes a new dataframe with the specified columns from this dataframe.
### Implementation
```dart
/// Makes a new dataframe with the specified columns from this dataframe.
  DataFrame select({required List<String> columns, dynamic hint}) =>
      RustLib.instance.api.dataFrameSelect(
        that: this,
        columns: columns,
      );
```

[DataFrame]: /reference/classes/dataframe/