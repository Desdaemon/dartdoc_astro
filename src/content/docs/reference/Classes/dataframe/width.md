---
title: "width"
description: |
   Returns the width of this dataframe, aka the number of columns.
---
<span class="dart-code"><strong>[int] width</strong>();</span>

 Returns the width of this dataframe, aka the number of columns.
### Implementation
```dart
/// Returns the width of this dataframe, aka the number of columns.
  int get width => RustLib.instance.api.dataFrameWidth(
        that: this,
      );
```

[int]: https://api.flutter.dev/flutter/dart-core/int-class.html