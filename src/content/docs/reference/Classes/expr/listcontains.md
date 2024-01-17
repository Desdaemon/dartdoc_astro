---
title: "listContains"
description: |
   TODO: Docs for contains
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listContains</strong>({<span class="nobr"><strong>required</strong> [Expr] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for contains
### Implementation
```dart
/// TODO: Docs for contains
  Expr listContains({required Expr other, dynamic hint}) =>
      RustLib.instance.api.exprListContains(
        that: this,
        other: other,
      );
```

[Expr]: /reference/classes/expr/