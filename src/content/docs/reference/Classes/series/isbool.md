---
title: "isBool"
description: |
   Returns whether this is a series of booleans.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>bool isBool</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns whether this is a series of booleans.
### Implementation
```dart
/// Returns whether this is a series of booleans.
  bool isBool({dynamic hint}) => RustLib.instance.api.seriesIsBool(
        that: this,
      );
```

