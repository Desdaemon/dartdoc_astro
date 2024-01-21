---
title: "describe"
description: |
   Output statistics about this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Future]\<[DataFrame]> describe</strong>({<span class="nobr">[Float64List] <i>percentiles</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

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

[DataFrame]: /reference/classes/dataframe/
[Future]: https://api.flutter.dev/flutter/dart-async/Future-class.html
[Float64List]: https://api.flutter.dev/flutter/dart-typed_data/Float64List-class.html