---
title: "strptime"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strptime</strong>(<span class="nobr">[DataType] dtype</span>, {<span class="nobr">[String] <i>format</i></span>, <span class="nobr">[bool] <i>strict</i></span>, <span class="nobr">[bool] <i>exact</i></span>, <span class="nobr">[bool] <i>cache</i></span>, <span class="nobr">[Ambiguous] <i>ambiguous</i></span>});</span>


### Implementation
```dart
Expr strptime(
    DataType dtype, {
    String? format,
    bool strict = true,
    bool exact = true,
    bool cache = true,
    Ambiguous ambiguous = Ambiguous.raise,
  }) =>
      expr.strptime(
        dtype: dtype,
        format: format,
        strict: strict,
        exact: exact,
        cache: cache,
        ambiguous: ambiguous,
      );
```

[Expr]: /reference/classes/expr/
[DataType]: /reference/classes/datatype/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[Ambiguous]: /reference/enums/ambiguous/