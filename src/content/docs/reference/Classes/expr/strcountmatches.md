---
title: "strCountMatches"
description: |
   TODO: Docs for count_matches
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strCountMatches</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">[bool] <i>literal</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for count_matches
### Implementation
```dart
/// TODO: Docs for count_matches
  Expr strCountMatches(
          {required Expr pat, bool literal = false, dynamic hint}) =>
      RustLib.instance.api.exprStrCountMatches(
        that: this,
        pat: pat,
        literal: literal,
      );
```

[Expr]: /reference/classes/expr/
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html