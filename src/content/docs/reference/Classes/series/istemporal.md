---
title: "isTemporal"
description: |
   Returns whether this is a series of [DateTime] or [Duration]s.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>bool isTemporal</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns whether this is a series of [DateTime] or [Duration]s.
### Implementation
```dart
/// Returns whether this is a series of [DateTime] or [Duration]s.
  bool isTemporal({dynamic hint}) => RustLib.instance.api.seriesIsTemporal(
        that: this,
      );
```

