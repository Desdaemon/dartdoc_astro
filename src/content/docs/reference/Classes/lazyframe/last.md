---
title: "last"
description: |
   Get the last row.
---
<span class="dart-code"><strong>[LazyFrame] last</strong>();</span>

 Get the last row.
### Implementation
```dart
/// Get the last row.
  LazyFrame get last => RustLib.instance.api.lazyFrameLast(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe