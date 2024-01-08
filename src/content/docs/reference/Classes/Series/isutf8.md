---
title: "isUtf8"
description: |
   Returns whether this is a series of UTF-8 strings.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>bool isUtf8</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns whether this is a series of UTF-8 strings.
### Implementation
```dart
/// Returns whether this is a series of UTF-8 strings.
  bool isUtf8({dynamic hint}) => RustLib.instance.api.seriesIsUtf8(
        that: this,
      );
```

[dynamic]: #