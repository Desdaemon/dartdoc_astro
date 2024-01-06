---
title: readCsv
description: |
   Reads a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file into a [DataFrame].
---
<code><strong>Future\<DataFrame> readCsv</strong>({<strong>required</strong> path, <i>dtypesSlice</i>, <i>hasHeader</i>, <i>columns</i>, <i>commentChar</i>, <i>eolChar</i>, <i>chunkSize</i>, <i>sampleSize</i>, <i>rowCount</i>, <i>encoding</i>, <i>nRows</i>, <i>nThreads</i>, <i>nullValues</i>, <i>projection</i>, <i>quoteChar</i>, <i>skipRows</i>, <i>skipRowsAfterHeader</i>, <i>ignoreErrors</i>, <i>rechunk</i>, <i>tryParseDates</i>, <i>lowMemory</i>, <i>hint</i>});</code>

 Reads a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file into a [DataFrame].

 - `columns`: Select only columns matching these names
 - `delimiter`: Specify the delimiter for this file.
 - `commentChar`: Ignore the rest of a line after encountering this character.
 - `eolChar`: Stop reading after encountering this character.
 - `quoteChar`: Specify the quote character, if set to null disables quoting.
 - `skipRows`: Skip the first few rows, then parse the header and the dataframe.
 - `skipRowsAfterHeader`: Skip this many rows after the header.
 - `chunkSize`: Specify the chunk size of the internal parser. Performance knob.
 - `nRows`: Try to read up to n rows then stop. Might not be honored in multithreading execution.
 - `nullValues`: Specify values to be interpreted as null.
 - `projection`: Select only columns at the specified indices.
 - `rechunk`: Relocate the dataframe into contiguous memory after parsing.
              Slow, but improves performance for later operations.

Parameter|Type|Default|
-|-|-|
`path`|<code>String</code>||
`dtypesSlice`|<code>List\<DataType>?</code>||
`hasHeader`|<code>bool?</code>||
`columns`|<code>List\<String>?</code>||
`commentChar`|<code>String?</code>||
`eolChar`|<code>String?</code>||
`chunkSize`|<code>int?</code>||
`sampleSize`|<code>int?</code>||
`rowCount`|<code>[RowCount?]</code>||
`encoding`|<code>[CsvEncoding?]</code>||
`nRows`|<code>int?</code>||
`nThreads`|<code>int?</code>||
`nullValues`|<code>[NullValues?]</code>||
`projection`|<code>Uint32List?</code>||
`quoteChar`|<code>String?</code>|`'"'`|
`skipRows`|<code>int</code>|`0`|
`skipRowsAfterHeader`|<code>int</code>|`0`|
`ignoreErrors`|<code>bool</code>|`false`|
`rechunk`|<code>bool</code>|`false`|
`tryParseDates`|<code>bool</code>|`true`|
`lowMemory`|<code>bool</code>|`false`|
`hint`|<code>dynamic</code>||

### Implementation
```dart
/// Reads a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file into a [DataFrame].
///
/// - `columns`: Select only columns matching these names
/// - `delimiter`: Specify the delimiter for this file.
/// - `commentChar`: Ignore the rest of a line after encountering this character.
/// - `eolChar`: Stop reading after encountering this character.
/// - `quoteChar`: Specify the quote character, if set to null disables quoting.
/// - `skipRows`: Skip the first few rows, then parse the header and the dataframe.
/// - `skipRowsAfterHeader`: Skip this many rows after the header.
/// - `chunkSize`: Specify the chunk size of the internal parser. Performance knob.
/// - `nRows`: Try to read up to n rows then stop. Might not be honored in multithreading execution.
/// - `nullValues`: Specify values to be interpreted as null.
/// - `projection`: Select only columns at the specified indices.
/// - `rechunk`: Relocate the dataframe into contiguous memory after parsing.
///              Slow, but improves performance for later operations.
Future<DataFrame> readCsv(
        {required String path,
        List<DataType>? dtypesSlice,
        bool? hasHeader,
        List<String>? columns,
        String? commentChar,
        String? eolChar,
        int? chunkSize,
        int? sampleSize,
        RowCount? rowCount,
        CsvEncoding? encoding,
        int? nRows,
        int? nThreads,
        NullValues? nullValues,
        Uint32List? projection,
        String? quoteChar = '"',
        int skipRows = 0,
        int skipRowsAfterHeader = 0,
        bool ignoreErrors = false,
        bool rechunk = false,
        bool tryParseDates = true,
        bool lowMemory = false,
        dynamic hint}) =>
    RustLib.instance.api.readCsv(
        path: path,
        dtypesSlice: dtypesSlice,
        hasHeader: hasHeader,
        columns: columns,
        commentChar: commentChar,
        eolChar: eolChar,
        chunkSize: chunkSize,
        sampleSize: sampleSize,
        rowCount: rowCount,
        encoding: encoding,
        nRows: nRows,
        nThreads: nThreads,
        nullValues: nullValues,
        projection: projection,
        quoteChar: quoteChar,
        skipRows: skipRows,
        skipRowsAfterHeader: skipRowsAfterHeader,
        ignoreErrors: ignoreErrors,
        rechunk: rechunk,
        tryParseDates: tryParseDates,
        lowMemory: lowMemory,
        hint: hint);
```

[RowCount?]: /reference/classes/rowcount
[CsvEncoding?]: /reference/enums/csvencoding
[NullValues?]: /reference/classes/nullvalues
[dynamic]: #