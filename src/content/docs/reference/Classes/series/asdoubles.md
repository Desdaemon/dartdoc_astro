---
title: "asDoubles"
description: |
   If compatible, returns a representation of this series as integers.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>List&lt;double?&gt; asDoubles</strong>({<span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 If compatible, returns a representation of this series as integers.
### Implementation
```dart
/// If compatible, returns a representation of this series as integers.
  List<double?> asDoubles({bool strict = true, dynamic hint}) =>
      RustLib.instance.api.seriesAsDoubles(
        that: this,
        strict: strict,
      );
```
