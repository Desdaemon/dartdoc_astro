---
title: "listGet"
description: |
   TODO: Docs for get
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listGet</strong>({<span class="nobr"><strong>required</strong> [Expr] index</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for get
### Implementation
```dart
/// TODO: Docs for get
  Expr listGet({required Expr index, dynamic hint}) =>
      RustLib.instance.api.exprListGet(
        that: this,
        index: index,
      );
```

[Expr]: /reference/classes/expr/