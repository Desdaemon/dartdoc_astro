---
title: "scanCsv"
description: |
   Prepares a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file for reading into a [LazyFrame].
---
<span class="dart-code"><strong>[Future]\<[LazyFrame]> scanCsv</strong>({<span class="nobr"><strong>required</strong> [String] path</span>, <span class="nobr"><strong>required</strong> [OptionSchema] dtypeOverwrite</span>, <span class="nobr">[bool] <i>hasHeader</i></span>, <span class="nobr">[String] <i>commentChar</i></span>, <span class="nobr">[String] <i>eolChar</i></span>, <span class="nobr">[String] <i>quoteChar</i></span>, <span class="nobr">[int] <i>skipRows</i></span>, <span class="nobr">[int] <i>skipRowsAfterHeader</i></span>, <span class="nobr">[RowCount] <i>rowCount</i></span>, <span class="nobr">[CsvEncoding] <i>encoding</i></span>, <span class="nobr">[int] <i>nRows</i></span>, <span class="nobr">[NullValues] <i>nullValues</i></span>, <span class="nobr">[bool] <i>ignoreErrors</i></span>, <span class="nobr">[bool] <i>rechunk</i></span>, <span class="nobr">[bool] <i>tryParseDates</i></span>, <span class="nobr">[int] <i>inferSchemaLength</i></span>, <span class="nobr">[bool] <i>cache</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Prepares a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file for reading into a [LazyFrame].

 - `delimiter`: Specify the delimiter for this file.
 - `commentChar`: Ignore the rest of a line after encountering this character.
 - `eolChar`: Stop reading after encountering this character.
 - `quoteChar`: Specify the quote character, if set to null disables quoting.
 - `skipRows`: Skip the first few rows, then parse the header and the dataframe.
 - `skipRowsAfterHeader`: Skip this many rows after the header.
 - `nRows`: Try to read up to n rows then stop. Might not be honored in multithreading execution.
 - `nullValues`: Specify values to be interpreted as null.
 - `rechunk`: Relocate the dataframe into contiguous memory after parsing.
              Slow, but improves performance for later operations.
 - `inferSchemaLength`: Specify how many rows to read to infer the schema, if null the entire table is scanned.
 - `cache`: Cache the dataframe after reading.
### Implementation
```dart
/// Prepares a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file for reading into a [LazyFrame].
///
/// - `delimiter`: Specify the delimiter for this file.
/// - `commentChar`: Ignore the rest of a line after encountering this character.
/// - `eolChar`: Stop reading after encountering this character.
/// - `quoteChar`: Specify the quote character, if set to null disables quoting.
/// - `skipRows`: Skip the first few rows, then parse the header and the dataframe.
/// - `skipRowsAfterHeader`: Skip this many rows after the header.
/// - `nRows`: Try to read up to n rows then stop. Might not be honored in multithreading execution.
/// - `nullValues`: Specify values to be interpreted as null.
/// - `rechunk`: Relocate the dataframe into contiguous memory after parsing.
///              Slow, but improves performance for later operations.
/// - `inferSchemaLength`: Specify how many rows to read to infer the schema, if null the entire table is scanned.
/// - `cache`: Cache the dataframe after reading.
Future<LazyFrame> scanCsv(
        {required String path,
        required OptionSchema dtypeOverwrite,
        bool? hasHeader,
        String? commentChar,
        String? eolChar,
        String? quoteChar = '"',
        int skipRows = 0,
        int skipRowsAfterHeader = 0,
        RowCount? rowCount,
        CsvEncoding? encoding,
        int? nRows,
        NullValues? nullValues,
        bool ignoreErrors = false,
        bool rechunk = false,
        bool tryParseDates = true,
        int? inferSchemaLength = 100,
        bool cache = false,
        dynamic hint}) =>
    RustLib.instance.api.scanCsv(
        path: path,
        dtypeOverwrite: dtypeOverwrite,
        hasHeader: hasHeader,
        commentChar: commentChar,
        eolChar: eolChar,
        quoteChar: quoteChar,
        skipRows: skipRows,
        skipRowsAfterHeader: skipRowsAfterHeader,
        rowCount: rowCount,
        encoding: encoding,
        nRows: nRows,
        nullValues: nullValues,
        ignoreErrors: ignoreErrors,
        rechunk: rechunk,
        tryParseDates: tryParseDates,
        inferSchemaLength: inferSchemaLength,
        cache: cache,
        hint: hint);
```

[LazyFrame]: /reference/classes/lazyframe/
[Future]: https://api.flutter.dev/flutter/dart-async/Future-class.html
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[OptionSchema]: /reference/classes/optionschema/
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html
[RowCount]: /reference/classes/rowcount/
[CsvEncoding]: /reference/enums/csvencoding/
[NullValues]: /reference/classes/nullvalues/