---
title: "dump"
description: |
   Dump the contents of this entire series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>String dump</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Dump the contents of this entire series.
### Implementation
```dart
/// Dump the contents of this entire series.
  String dump({dynamic hint}) => RustLib.instance.api.seriesDump(
        that: this,
      );
```

