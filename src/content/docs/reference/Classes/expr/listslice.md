---
title: "listSlice"
description: |
   TODO: Docs for slice
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listSlice</strong>({<span class="nobr"><strong>required</strong> [Expr] offset</span>, <span class="nobr"><strong>required</strong> [Expr] length</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for slice
### Implementation
```dart
/// TODO: Docs for slice
  Expr listSlice({required Expr offset, required Expr length, dynamic hint}) =>
      RustLib.instance.api.exprListSlice(
        that: this,
        offset: offset,
        length: length,
      );
```

[Expr]: /reference/classes/expr/