---
title: "getRow"
description: |
   Get a row of data from this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[List]\<dynamic> getRow</strong>({<span class="nobr"><strong>required</strong> [int] index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Get a row of data from this dataframe.

 Prefer other functions to this inside a hot loop, as this function performs
 data copies and conversions to and from the native representation.
### Implementation
```dart
/// Get a row of data from this dataframe.
  ///
  /// Prefer other functions to this inside a hot loop, as this function performs
  /// data copies and conversions to and from the native representation.
  List<dynamic> getRow({required int index, dynamic hint}) =>
      RustLib.instance.api.dataFrameGetRow(
        that: this,
        index: index,
      );
```

[List]: https://api.flutter.dev/flutter/dart-core/List-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html