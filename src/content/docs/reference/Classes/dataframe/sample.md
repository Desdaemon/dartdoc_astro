---
title: "sample"
description: |
   Sample [n] datapoints from this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] sample</strong>({<span class="nobr"><strong>required</strong> [Series] n</span>, <span class="nobr">bool <i>withReplacement</i></span>, <span class="nobr">bool <i>shuffle</i></span>, <span class="nobr">int? <i>seed</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Sample [n] datapoints from this dataframe.
### Implementation
```dart
/// Sample [n] datapoints from this dataframe.
  DataFrame sample(
          {required Series n,
          bool withReplacement = false,
          bool shuffle = false,
          int? seed,
          dynamic hint}) =>
      RustLib.instance.api.dataFrameSample(
        that: this,
        n: n,
        withReplacement: withReplacement,
        shuffle: shuffle,
        seed: seed,
      );
```

[DataFrame]: /reference/classes/dataframe/
[Series]: /reference/classes/series/