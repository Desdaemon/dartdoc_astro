---
title: "dump"
description: |
   Dump the contents of this entire dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>String dump</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Dump the contents of this entire dataframe.
### Implementation
```dart
/// Dump the contents of this entire dataframe.
  String dump({dynamic hint}) => RustLib.instance.api.dataFrameDump(
        that: this,
      );
```

