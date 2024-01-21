---
title: "withRowCount"
description: |
   Add a new column at index 0 denoting the row number.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] withRowCount</strong>({<span class="nobr"><strong>required</strong> [String] name</span>, <span class="nobr">[int] <i>offset</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Add a new column at index 0 denoting the row number.
### Implementation
```dart
/// Add a new column at index 0 denoting the row number.
  LazyFrame withRowCount({required String name, int? offset, dynamic hint}) =>
      RustLib.instance.api.lazyFrameWithRowCount(
        that: this,
        name: name,
        offset: offset,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html