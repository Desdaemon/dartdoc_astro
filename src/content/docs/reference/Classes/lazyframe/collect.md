---
title: "collect"
description: |
   Executes all lazy operations and collects results into a [DataFrame].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Future]\<[DataFrame]> collect</strong>({<span class="nobr">[bool] <i>streaming</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Executes all lazy operations and collects results into a [DataFrame].

 Can also optionally be run in [streaming mode](https://docs.pola.rs/user-guide/concepts/streaming).
### Implementation
```dart
/// Executes all lazy operations and collects results into a [DataFrame].
  ///
  /// Can also optionally be run in [streaming mode](https://docs.pola.rs/user-guide/concepts/streaming).
  Future<DataFrame> collect({bool streaming = false, dynamic hint}) =>
      RustLib.instance.api.lazyFrameCollect(
        that: this,
        streaming: streaming,
      );
```

[DataFrame]: /reference/classes/dataframe/
[Future]: https://api.flutter.dev/flutter/dart-async/Future-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html