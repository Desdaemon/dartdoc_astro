---
title: "height"
description: |
   Returns the height of this dataframe, aka the number of rows.
---
<span class="dart-code"><strong>int height</strong>();</span>

 Returns the height of this dataframe, aka the number of rows.
### Implementation
```dart
/// Returns the height of this dataframe, aka the number of rows.
  int get height => RustLib.instance.api.dataFrameHeight(
        that: this,
      );
```

