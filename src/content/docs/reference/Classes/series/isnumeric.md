---
title: "isNumeric"
description: |
   Returns whether this is a series of numeric values.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>bool isNumeric</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns whether this is a series of numeric values.
### Implementation
```dart
/// Returns whether this is a series of numeric values.
  bool isNumeric({dynamic hint}) => RustLib.instance.api.seriesIsNumeric(
        that: this,
      );
```

