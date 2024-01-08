---
title: "reshape"
description: |
   Creates a new series with the specified dimensions.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] reshape</strong>({<span class="nobr"><strong>required</strong> [Int64List] dims</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Creates a new series with the specified dimensions.
### Implementation
```dart
/// Creates a new series with the specified dimensions.
  Series reshape({required Int64List dims, dynamic hint}) =>
      RustLib.instance.api.seriesReshape(
        that: this,
        dims: dims,
      );
```

[Series]: /reference/classes/series
[Int64List]: /reference/classes/int64list
[dynamic]: #