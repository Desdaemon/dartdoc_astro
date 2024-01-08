---
title: "sortInPlace"
description: |
   Sorts this dataframe by the specified columns.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>void sortInPlace</strong>({<span class="nobr">List&lt;String&gt; <i>byColumn</i></span>, <span class="nobr">List&lt;bool&gt; <i>descending</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Sorts this dataframe by the specified columns.
### Implementation
```dart
/// Sorts this dataframe by the specified columns.
  void sortInPlace(
          {List<String> byColumn = const [],
          List<bool> descending = const [],
          bool maintainOrder = false,
          dynamic hint}) =>
      RustLib.instance.api.dataFrameSortInPlace(
        that: this,
        byColumn: byColumn,
        descending: descending,
        maintainOrder: maintainOrder,
      );
```

