---
title: "strExtractAll"
description: |
   TODO: Docs for extract_all
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strExtractAll</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for extract_all
### Implementation
```dart
/// TODO: Docs for extract_all
  Expr strExtractAll({required Expr pat, dynamic hint}) =>
      RustLib.instance.api.exprStrExtractAll(
        that: this,
        pat: pat,
      );
```

[Expr]: /reference/classes/expr