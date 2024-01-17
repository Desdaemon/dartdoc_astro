---
title: "listHead"
description: |
   TODO: Docs for head
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listHead</strong>({<span class="nobr"><strong>required</strong> [Expr] n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for head
### Implementation
```dart
/// TODO: Docs for head
  Expr listHead({required Expr n, dynamic hint}) =>
      RustLib.instance.api.exprListHead(
        that: this,
        n: n,
      );
```

[Expr]: /reference/classes/expr/