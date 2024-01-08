---
title: "strReplace"
description: |
   TODO: Docs for replace
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strReplace</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr"><strong>required</strong> [Expr] val</span>, <span class="nobr">bool <i>literal</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for replace
### Implementation
```dart
/// TODO: Docs for replace
  Expr strReplace(
          {required Expr pat,
          required Expr val,
          bool literal = false,
          dynamic hint}) =>
      RustLib.instance.api.exprStrReplace(
        that: this,
        pat: pat,
        val: val,
        literal: literal,
      );
```

[Expr]: /reference/classes/expr