---
title: "iter"
description: |
   Iterate over this series' values.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>Stream&lt;dynamic&gt; iter</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Iterate over this series' values.
### Implementation
```dart
/// Iterate over this series' values.
  Stream<dynamic> iter({dynamic hint}) => RustLib.instance.api.seriesIter(
        that: this,
      );
```

