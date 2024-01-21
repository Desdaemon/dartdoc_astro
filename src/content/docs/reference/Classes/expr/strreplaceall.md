---
title: "strReplaceAll"
description: |
   TODO: Docs for replace_all
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strReplaceAll</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr"><strong>required</strong> [Expr] val</span>, <span class="nobr">[bool] <i>literal</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for replace_all
### Implementation
```dart
/// TODO: Docs for replace_all
  Expr strReplaceAll(
          {required Expr pat,
          required Expr val,
          bool literal = false,
          dynamic hint}) =>
      RustLib.instance.api.exprStrReplaceAll(
        that: this,
        pat: pat,
        val: val,
        literal: literal,
      );
```

[Expr]: /reference/classes/expr/
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html