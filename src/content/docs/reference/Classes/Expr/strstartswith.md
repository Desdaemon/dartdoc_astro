---
title: "strStartsWith"
description: |
   TODO: Docs for starts_with
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strStartsWith</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for starts_with
### Implementation
```dart
/// TODO: Docs for starts_with
  Expr strStartsWith({required Expr pat, dynamic hint}) =>
      RustLib.instance.api.exprStrStartsWith(
        that: this,
        pat: pat,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #