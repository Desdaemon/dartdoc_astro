---
title: "listShift"
description: |
   TODO: Docs for shift
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] listShift</strong>({<span class="nobr"><strong>required</strong> [Expr] periods</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for shift
### Implementation
```dart
/// TODO: Docs for shift
  Expr listShift({required Expr periods, dynamic hint}) =>
      RustLib.instance.api.exprListShift(
        that: this,
        periods: periods,
      );
```

[Expr]: /reference/classes/expr/