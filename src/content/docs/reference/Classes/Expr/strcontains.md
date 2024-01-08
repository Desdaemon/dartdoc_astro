---
title: "strContains"
description: |
   TODO: Docs for contains
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strContains</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for contains
### Implementation
```dart
/// TODO: Docs for contains
  Expr strContains({required Expr pat, bool strict = true, dynamic hint}) =>
      RustLib.instance.api.exprStrContains(
        that: this,
        pat: pat,
        strict: strict,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #