---
title: "fetch"
description: |
   Similar to [collect], but overrides the number of rows read by each operation.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Future]\<[DataFrame]> fetch</strong>({<span class="nobr"><strong>required</strong> [int] nRows</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Similar to [collect], but overrides the number of rows read by each operation.

 The final row count is not guaranteed to be equal [nRows].
### Implementation
```dart
/// Similar to [collect], but overrides the number of rows read by each operation.
  ///
  /// The final row count is not guaranteed to be equal [nRows].
  Future<DataFrame> fetch({required int nRows, dynamic hint}) =>
      RustLib.instance.api.lazyFrameFetch(
        that: this,
        nRows: nRows,
      );
```

[DataFrame]: /reference/classes/dataframe/
[Future]: https://api.flutter.dev/flutter/dart-async/Future-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html