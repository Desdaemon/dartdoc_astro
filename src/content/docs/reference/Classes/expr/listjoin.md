---
title: "listJoin"
description: |
   TODO: Docs for join
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listJoin</strong>({<span class="nobr"><strong>required</strong> [Expr] separator</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for join
### Implementation
```dart
/// TODO: Docs for join
  Expr listJoin({required Expr separator, dynamic hint}) =>
      RustLib.instance.api.exprListJoin(
        that: this,
        separator: separator,
      );
```

[Expr]: /reference/classes/expr/