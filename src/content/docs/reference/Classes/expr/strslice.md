---
title: "strSlice"
description: |
   TODO: Docs for slice
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strSlice</strong>({<span class="nobr"><strong>required</strong> int start</span>, <span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for slice
### Implementation
```dart
/// TODO: Docs for slice
  Expr strSlice({required int start, int? length, dynamic hint}) =>
      RustLib.instance.api.exprStrSlice(
        that: this,
        start: start,
        length: length,
      );
```

[Expr]: /reference/classes/expr