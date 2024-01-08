---
title: "estimatedSize"
description: |
   Returns the amount of bytes occupied by this series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>int estimatedSize</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the amount of bytes occupied by this series.
### Implementation
```dart
/// Returns the amount of bytes occupied by this series.
  int estimatedSize({dynamic hint}) => RustLib.instance.api.seriesEstimatedSize(
        that: this,
      );
```

[dynamic]: #