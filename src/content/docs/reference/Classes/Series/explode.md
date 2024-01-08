---
title: "explode"
description: |
   Expands a series of lists into rows of values, or strings into rows of characters.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] explode</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Expands a series of lists into rows of values, or strings into rows of characters.
### Implementation
```dart
/// Expands a series of lists into rows of values, or strings into rows of characters.
  Series explode({dynamic hint}) => RustLib.instance.api.seriesExplode(
        that: this,
      );
```

[Series]: /reference/classes/series
[dynamic]: #