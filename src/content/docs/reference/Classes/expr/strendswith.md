---
title: "strEndsWith"
description: |
   TODO: Docs for ends_with
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strEndsWith</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for ends_with
### Implementation
```dart
/// TODO: Docs for ends_with
  Expr strEndsWith({required Expr pat, dynamic hint}) =>
      RustLib.instance.api.exprStrEndsWith(
        that: this,
        pat: pat,
      );
```

[Expr]: /reference/classes/expr