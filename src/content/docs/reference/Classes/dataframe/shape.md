---
title: "shape"
description: |
   Returns the height and width of this dataframe.
---
<span class="dart-code"><strong>(int, int) shape</strong>();</span>

 Returns the height and width of this dataframe.
### Implementation
```dart
/// Returns the height and width of this dataframe.
  (int, int) get shape => RustLib.instance.api.dataFrameShape(
        that: this,
      );
```

