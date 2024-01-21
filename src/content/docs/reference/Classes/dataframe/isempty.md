---
title: "isEmpty"
description: |
   Returns whether this dataframe has no rows.
---
<span class="dart-code"><strong>[bool] isEmpty</strong>();</span>

 Returns whether this dataframe has no rows.
### Implementation
```dart
/// Returns whether this dataframe has no rows.
  bool get isEmpty => RustLib.instance.api.dataFrameIsEmpty(
        that: this,
      );
```

[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html