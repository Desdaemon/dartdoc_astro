---
title: "estimatedSize"
description: |
   Returns the amount of bytes occupied by this series.
---
<span class="dart-code"><strong>int estimatedSize</strong>();</span>

 Returns the amount of bytes occupied by this series.
### Implementation
```dart
/// Returns the amount of bytes occupied by this series.
  int get estimatedSize => RustLib.instance.api.dataFrameEstimatedSize(
        that: this,
      );
```

