---
title: "toDate"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] toDate</strong>({<span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>});</span>


### Implementation
```dart
Expr toDate({
    String? format,
    bool strict = true,
    bool exact = true,
    bool cache = true,
  }) =>
      expr.strToDate(
        format: format,
        strict: strict,
        exact: exact,
        cache: cache,
      );
```

[Expr]: /reference/classes/expr