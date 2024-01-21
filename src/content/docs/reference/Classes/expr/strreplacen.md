---
title: "strReplaceN"
description: |
   TODO: Docs for replace_n
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strReplaceN</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr"><strong>required</strong> [Expr] val</span>, <span class="nobr">[bool] <i>literal</i></span>, <span class="nobr"><strong>required</strong> [int] n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for replace_n
### Implementation
```dart
/// TODO: Docs for replace_n
  Expr strReplaceN(
          {required Expr pat,
          required Expr val,
          bool literal = false,
          required int n,
          dynamic hint}) =>
      RustLib.instance.api.exprStrReplaceN(
        that: this,
        pat: pat,
        val: val,
        literal: literal,
        n: n,
      );
```

[Expr]: /reference/classes/expr/
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html