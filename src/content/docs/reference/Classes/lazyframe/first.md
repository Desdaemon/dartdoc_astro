---
title: "first"
description: |
   Get the first row.
---
<span class="dart-code"><strong>[LazyFrame] first</strong>();</span>

 Get the first row.
### Implementation
```dart
/// Get the first row.
  LazyFrame get first => RustLib.instance.api.lazyFrameFirst(
        that: this,
      );
```

[LazyFrame]: /reference/classes/lazyframe