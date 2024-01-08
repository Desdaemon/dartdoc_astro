---
title: "asInts"
description: |
   If compatible, returns a representation of this series as integers.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>List\<int?> asInts</strong>({<span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 If compatible, returns a representation of this series as integers.
### Implementation
```dart
/// If compatible, returns a representation of this series as integers.
  List<int?> asInts({bool strict = true, dynamic hint}) =>
      RustLib.instance.api.seriesAsInts(
        that: this,
        strict: strict,
      );
```

[dynamic]: #