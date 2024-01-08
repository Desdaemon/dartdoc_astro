---
title: "nullCount"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] nullCount</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
LazyFrame nullCount({dynamic hint}) =>
      RustLib.instance.api.lazyFrameNullCount(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe
[dynamic]: #