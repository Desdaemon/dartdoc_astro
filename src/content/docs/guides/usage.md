---
title: Usage
description: Get started with Polars in 5 minutes
---

### Reading and writing data

Use [`readCsv`] and [`readJson`](/reference/functions/readjson) to read a file.
These operations produce a [DataFrame] which is a collection of columns, or [Series]. Once you are done writing
changes back to the dataframe, you can use [`DataFrame.writeCsv`](/reference/classes/dataframe/writecsv).

*Functions/methods used:*  
[`readCsv`] | [`select`](/reference/classes/dataframe/select) | [`writeCsv`](/reference/classes/dataframe/writecsv)

```dart
// io.dart
import 'package:polars/polars.dart';

void main() async {
  await initialize();
  var df = await readCsv(path: 'some_data.csv');
  // manipulate your data...
  df = df.select(columns: ['foo', 'bar']);
  await df.writeCsv(path: 'some_data_processed.csv');
}
```

### Querying and manipulating data

Polars has a fluent DSL system for querying data via [expressions](/reference/classes/expr/),
allowing selection, filtering, manipulation and even creation of new [Series]. The bulk of query operations
are provided by [LazyFrame] which can be accessed via [`DataFrame.lazy`](/reference/classes/dataframe/lazy).

*Functions/methods used:*  
[`readCsv`] | [`lazy`](/reference/classes/dataframe/lazy) |
[`col`] | [`alias`] | [`withColumns`](/reference/classes/lazyframe/withcolumns) |
[`collect`](/reference/classes/lazyframe/collect)

```dart
// expr.dart
import 'package:polars/polars.dart';

void main() async {
  await initialize();
  DataFrame df = await readCsv(path: 'some_data.csv');
  df = await df
      .lazy()
      .withColumns(exprs: [
          (col('foo') * 2).alias('foo_double'),
          (col('first_name') + ' ' + col('last_name')).alias('full_name'),
      ])
      .collect();
}
```

### Creating ad-hoc dataframes and series

You can always create dataframes and series for testing purposes, using [`df`](/reference/functions/df) and [`series`](/reference/functions/series).

```dart
// df.dart
import 'package:polars/polars.dart';

void main() async {
  await initialize();

  final Series baz = series([true, false, null], name: 'baz');
  final DataFrame data = df({
    'foo': [1, 2, 3],
    'bar': ['one', 'two', null],
    'baz': baz,
  });
}
```

[DataFrame]: /reference/classes/dataframe/
[LazyFrame]: /reference/classes/lazyframe/
[Series]: /reference/classes/series/
[`readCsv`]: /reference/functions/readcsv
[`col`]: /reference/functions/col
[`alias`]: /reference/extensions/exprext/alias
