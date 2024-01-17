---
title: "strContainsLiteral"
description: |
   TODO: Docs for contains_literal
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strContainsLiteral</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for contains_literal
### Implementation
```dart
/// TODO: Docs for contains_literal
  Expr strContainsLiteral({required Expr pat, dynamic hint}) =>
      RustLib.instance.api.exprStrContainsLiteral(
        that: this,
        pat: pat,
      );
```

[Expr]: /reference/classes/expr/