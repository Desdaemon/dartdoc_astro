---
title: "df"
description: |
   Create a [DataFrame] from a mapping of column names to homogenous lists of values, or [Series] themselves.
---
<span class="dart-code"><strong>[DataFrame] df</strong>(<span class="nobr">Map&lt;String, dynamic&gt; data</span>, {<span class="nobr">Map&lt;String, DataType&gt; <i>dtypes</i></span>});</span>

 Create a [DataFrame] from a mapping of column names to homogenous lists of values, or [Series] themselves.

 Optionally provide [dtypes] to override the data type of each column to parse from strings.
### Implementation
```dart
/// Create a [DataFrame] from a mapping of column names to homogenous lists of values, or [Series] themselves.
///
/// Optionally provide [dtypes] to override the data type of each column to parse from strings.
DataFrame df(
  Map<String, dynamic> data, {
  Map<String, DataType> dtypes = const {},
}) {
  return DataFrame.ofLits(series: [
    for (final entry in data.entries)
      (
        entry.key,
        LiteralsExt.from(
          entry.value,
          dtypes[entry.key] ?? const DataType.utf8(),
        )
      )
  ]);
}
```

[DataFrame]: /reference/classes/dataframe