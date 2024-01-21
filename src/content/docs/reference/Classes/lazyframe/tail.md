---
title: "tail"
description: |
   Get the last [n] rows.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] tail</strong>({<span class="nobr"><strong>required</strong> [int] n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Get the last [n] rows.
### Implementation
```dart
/// Get the last [n] rows.
  LazyFrame tail({required int n, dynamic hint}) =>
      RustLib.instance.api.lazyFrameTail(
        that: this,
        n: n,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html