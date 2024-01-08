---
title: "describe"
description: |
   Output statistics about this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>Future\<DataFrame> describe</strong>({<span class="nobr">Float64List? <i>percentiles</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Output statistics about this dataframe.
### Implementation
```dart
/// Output statistics about this dataframe.
  Future<DataFrame> describe({Float64List? percentiles, dynamic hint}) =>
      RustLib.instance.api.dataFrameDescribe(
        that: this,
        percentiles: percentiles,
      );
```

[dynamic]: #