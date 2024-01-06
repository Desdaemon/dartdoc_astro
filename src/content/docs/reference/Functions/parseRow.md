---
title: parseRow
description: |
   Use this function to parse the results of [DataFrame.iter] and similar methods.
---
<code><strong>Future\<List\<dynamic>> parseRow</strong>(row, {<i>growable</i>}) async;</code>

 Use this function to parse the results of [DataFrame.iter] and similar methods.

Parameter|Type|Default|
-|-|-|
`row`|<code>FutureOr\<List\<dynamic>></code>||
`growable`|<code>bool</code>|`true`|

### Implementation
```dart
/// Use this function to parse the results of [DataFrame.iter] and similar methods.
Future<List<dynamic>> parseRow(FutureOr<List<dynamic>> row,
    {bool growable = true}) async {
  final row_ = await Future.value(row);
  return row_.map(parseCell).toList(growable: growable);
}
```

