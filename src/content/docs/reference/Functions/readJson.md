---
title: readJson
description: |
   Reads a [.json](https://en.wikipedia.org/wiki/JSON) file into a [DataFrame].
---
<code><strong>Future\<DataFrame> readJson</strong>({<strong>required</strong> path, <i>batchSize</i>, <i>projection</i>, <i>hint</i>});</code>

 Reads a [.json](https://en.wikipedia.org/wiki/JSON) file into a [DataFrame].

Parameter|Type|Default|
-|-|-|
`path`|<code>String</code>||
`batchSize`|<code>int?</code>||
`projection`|<code>List\<String>?</code>||
`hint`|<code>dynamic</code>||

### Implementation
```dart
/// Reads a [.json](https://en.wikipedia.org/wiki/JSON) file into a [DataFrame].
Future<DataFrame> readJson(
        {required String path,
        int? batchSize,
        List<String>? projection,
        dynamic hint}) =>
    RustLib.instance.api.readJson(
        path: path, batchSize: batchSize, projection: projection, hint: hint);
```

[dynamic]: #