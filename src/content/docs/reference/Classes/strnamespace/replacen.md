---
title: "replaceN"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] replaceN</strong>(<span class="nobr">[Object] pat</span>, <span class="nobr">[Object] val</span>, {<span class="nobr"><strong>required</strong> [int] n</span>, <span class="nobr">[bool] <i>literal</i></span>});</span>


### Implementation
```dart
Expr replaceN(
    Object? pat,
    Object? val, {
    required int n,
    bool literal = false,
  }) =>
      expr.strReplaceN(pat: pat.expr, val: val.expr, n: n, literal: literal);
```

[Expr]: /reference/classes/expr/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html