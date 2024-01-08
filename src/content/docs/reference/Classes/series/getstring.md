---
title: "getString"
description: |
   Get the value at [index] as a string.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>String? getString</strong>({<span class="nobr"><strong>required</strong> int index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Get the value at [index] as a string.
### Implementation
```dart
/// Get the value at [index] as a string.
  String? getString({required int index, dynamic hint}) =>
      RustLib.instance.api.seriesGetString(
        that: this,
        index: index,
      );
```

