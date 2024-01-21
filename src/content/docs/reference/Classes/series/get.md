---
title: "get"
description: |
   Get the value at [index] as a double.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[double] get</strong>({<span class="nobr"><strong>required</strong> [int] index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Get the value at [index] as a double.
### Implementation
```dart
/// Get the value at [index] as a double.
  double? get({required int index, dynamic hint}) =>
      RustLib.instance.api.seriesGet(
        that: this,
        index: index,
      );
```

[double]: https://api.flutter.dev/flutter/dart-core/double-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html