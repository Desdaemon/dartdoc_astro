---
title: "iter"
description: |
   Iterate through this dataframe's rows.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>Stream\<List\<dynamic>> iter</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Iterate through this dataframe's rows.

 Use [parseRow] to retrieve the canonical values for these rows.
### Implementation
```dart
/// Iterate through this dataframe's rows.
  ///
  /// Use [parseRow] to retrieve the canonical values for these rows.
  Stream<List<dynamic>> iter({dynamic hint}) =>
      RustLib.instance.api.dataFrameIter(
        that: this,
      );
```

[dynamic]: #