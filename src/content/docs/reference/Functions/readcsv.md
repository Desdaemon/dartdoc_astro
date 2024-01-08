---
title: "readCsv"
description: |
   Reads a [.csv](https://en.wikipedia.org/wiki/Comma-separated_values) file into a [DataFrame].
---
<span class="dart-code"><strong>Future&lt;DataFrame&gt; readCsv</strong>({<span class="nobr"><strong>required</strong> String path</span>, <span class="nobr">List&lt;DataType&gt;? <i>dtypesSlice</i></span>, <span class="nobr">bool? <i>hasHeader</i></span>, <span class="nobr">List&lt;String&gt;? <i>columns</i></span>, <span class="nobr">String? <i>commentChar</i></span>, <span class="nobr">String? <i>eolChar</i></span>, <span class="nobr">int? <i>chunkSize</i></span>, <span class="nobr">int? <i>sampleSize</i></span>, <span class="nobr">[RowCount?] <i>rowCount</i></span>, <span class="nobr">[CsvEncoding?] <i>encoding</i></span>, <span class="nobr">int? <i>nRows</i></span>, <span class="nobr">int? <i>nThreads</i></span>, <span class="nobr">[NullValues?] <i>nullValues</i></span>, <span class="nobr">Uint32List? <i>projection</i></span>, <span class="nobr">String? <i>quoteChar</i></span>, <span class="nobr">int <i>skipRows</i></span>, <span class="nobr">int <i>skipRowsAfterHeader</i></span>, <span class="nobr">bool <i>ignoreErrors</i></span>, <span class="nobr">bool <i>rechunk</i></span>, <span class="nobr">bool <i>tryParseDates</i></span>, <span class="nobr">bool <i>lowMemory</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

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