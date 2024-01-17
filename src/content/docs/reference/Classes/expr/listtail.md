---
title: "listTail"
description: |
   TODO: Docs for tail
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listTail</strong>({<span class="nobr"><strong>required</strong> [Expr] n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for tail
### Implementation
```dart
/// TODO: Docs for tail
  Expr listTail({required Expr n, dynamic hint}) =>
      RustLib.instance.api.exprListTail(
        that: this,
        n: n,
      );
```

[Expr]: /reference/classes/expr/