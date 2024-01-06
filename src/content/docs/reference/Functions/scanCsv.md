---
title: scanCsv
description: |
   Prepares a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file for reading into a [LazyFrame].
---
<code><strong>Future\<LazyFrame> scanCsv</strong>({<strong>required</strong> path, <strong>required</strong> dtypeOverwrite, <i>hasHeader</i>, <i>commentChar</i>, <i>eolChar</i>, <i>quoteChar</i>, <i>skipRows</i>, <i>skipRowsAfterHeader</i>, <i>rowCount</i>, <i>encoding</i>, <i>nRows</i>, <i>nullValues</i>, <i>ignoreErrors</i>, <i>rechunk</i>, <i>tryParseDates</i>, <i>inferSchemaLength</i>, <i>cache</i>, <i>hint</i>});</code>

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

Parameter|Type|Default|
-|-|-|
`path`|<code>String</code>||
`dtypeOverwrite`|<code>[OptionSchema]</code>||
`hasHeader`|<code>bool?</code>||
`commentChar`|<code>String?</code>||
`eolChar`|<code>String?</code>||
`quoteChar`|<code>String?</code>|`'"'`|
`skipRows`|<code>int</code>|`0`|
`skipRowsAfterHeader`|<code>int</code>|`0`|
`rowCount`|<code>[RowCount?]</code>||
`encoding`|<code>[CsvEncoding?]</code>||
`nRows`|<code>int?</code>||
`nullValues`|<code>[NullValues?]</code>||
`ignoreErrors`|<code>bool</code>|`false`|
`rechunk`|<code>bool</code>|`false`|
`tryParseDates`|<code>bool</code>|`true`|
`inferSchemaLength`|<code>int?</code>|`100`|
`cache`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||

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

[OptionSchema]: /reference/classes/optionschema
[RowCount?]: /reference/classes/rowcount
[CsvEncoding?]: /reference/enums/csvencoding
[NullValues?]: /reference/classes/nullvalues
[dynamic]: #