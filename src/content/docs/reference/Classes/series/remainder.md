---
title: "remainder"
description: |
   Returns a new series with the [remainder](https://en.wikipedia.org/wiki/Remainder)
   between this series' and [other]'s elements.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] remainder</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a new series with the [remainder](https://en.wikipedia.org/wiki/Remainder)
 between this series' and [other]'s elements.
### Implementation
```dart
/// Returns a new series with the [remainder](https://en.wikipedia.org/wiki/Remainder)
  /// between this series' and [other]'s elements.
  Series remainder({required Series other, dynamic hint}) =>
      RustLib.instance.api.seriesRemainder(
        that: this,
        other: other,
      );
```

[Series]: /reference/classes/series