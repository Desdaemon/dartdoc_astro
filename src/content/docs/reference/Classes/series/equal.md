---
title: "equal"
description: |
   Returns whether this series is identical to [other].
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[bool] equal</strong>({<span class="nobr"><strong>required</strong> [Series] other</span>, <span class="nobr">[bool] <i>ignoreNull</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns whether this series is identical to [other].

 if `ignoreNull` is true, null values are considered to be equal.
### Implementation
```dart
/// Returns whether this series is identical to [other].
  ///
  /// if `ignoreNull` is true, null values are considered to be equal.
  bool equal({required Series other, bool ignoreNull = false, dynamic hint}) =>
      RustLib.instance.api.seriesEqual(
        that: this,
        other: other,
        ignoreNull: ignoreNull,
      );
```

[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[Series]: /reference/classes/series/