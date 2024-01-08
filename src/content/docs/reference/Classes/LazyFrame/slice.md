---
title: "slice"
description: |
   Slice the frame.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] slice</strong>({<span class="nobr"><strong>required</strong> int offset</span>, <span class="nobr"><strong>required</strong> int len</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Slice the frame.
### Implementation
```dart
/// Slice the frame.
  LazyFrame slice({required int offset, required int len, dynamic hint}) =>
      RustLib.instance.api.lazyFrameSlice(
        that: this,
        offset: offset,
        len: len,
      );
```

[LazyFrame]: /reference/classes/lazyframe
[dynamic]: #