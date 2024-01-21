---
title: "unique"
description: |
   Keep unique rows without maintaining order.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] unique</strong>({<span class="nobr">[List]\<[String]> <i>subset</i></span>, <span class="nobr"><strong>required</strong> [UniqueKeepStrategy] keepStrategy</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Keep unique rows without maintaining order.
### Implementation
```dart
/// Keep unique rows without maintaining order.
  LazyFrame unique(
          {List<String>? subset,
          required UniqueKeepStrategy keepStrategy,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameUnique(
        that: this,
        subset: subset,
        keepStrategy: keepStrategy,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html
[UniqueKeepStrategy]: /reference/enums/uniquekeepstrategy/