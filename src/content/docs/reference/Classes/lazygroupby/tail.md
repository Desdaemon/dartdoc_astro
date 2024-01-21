---
title: "tail"
description: |
   Return the last [n] rows of each group.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] tail</strong>({<span class="nobr">[int] <i>n</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Return the last [n] rows of each group.
### Implementation
```dart
/// Return the last [n] rows of each group.
  LazyFrame tail({int? n, dynamic hint}) =>
      RustLib.instance.api.lazyGroupByTail(
        that: this,
        n: n,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html