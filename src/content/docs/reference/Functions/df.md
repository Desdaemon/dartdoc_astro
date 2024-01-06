---
title: df
description: |
   Create a [DataFrame] from a mapping of column names to homogenous lists of values, or [Series] themselves.
---
<code><strong>[DataFrame] df</strong>(data, {<i>dtypes</i>});</code>

 Create a [DataFrame] from a mapping of column names to homogenous lists of values, or [Series] themselves.

 Optionally provide [dtypes] to override the data type of each column to parse from strings.

Parameter|Type|Default|
-|-|-|
`data`|<code>Map\<String, dynamic></code>||
`dtypes`|<code>Map\<String, DataType></code>|`const {}`|

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