---
title: "append"
description: |
   Adds the contents of [other] onto this series.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>void append</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Adds the contents of [other] onto this series.

 Throws if [other] is self.
### Implementation
```dart
/// Adds the contents of [other] onto this series.
  ///
  /// Throws if [other] is self.
  void append({required Series other, dynamic hint}) =>
      RustLib.instance.api.seriesAppend(
        that: this,
        other: other,
      );
```

[Series]: /reference/classes/series/