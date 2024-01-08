---
title: "ofLits"
description: |
   Returns a new, empty dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] ofLits</strong>({<span class="nobr">List\<(String, Literals)>? <i>series</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a new, empty dataframe.
### Implementation
```dart
/// Returns a new, empty dataframe.
  static DataFrame ofLits({List<(String, Literals)>? series, dynamic hint}) =>
      RustLib.instance.api.dataFrameOfLits(series: series, hint: hint);
```

[DataFrame]: /reference/classes/dataframe
[dynamic]: #