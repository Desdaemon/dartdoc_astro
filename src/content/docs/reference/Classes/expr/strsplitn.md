---
title: "strSplitn"
description: |
   TODO: Docs for splitn
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strSplitn</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr"><strong>required</strong> [int] n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for splitn
### Implementation
```dart
/// TODO: Docs for splitn
  Expr strSplitn({required Expr by, required int n, dynamic hint}) =>
      RustLib.instance.api.exprStrSplitn(
        that: this,
        by: by,
        n: n,
      );
```

[Expr]: /reference/classes/expr/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html