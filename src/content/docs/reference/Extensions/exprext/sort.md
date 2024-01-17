---
title: "sort"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] sort</strong>({<span class="nobr">bool <i>descending</i></span>, <span class="nobr">bool <i>multithreaded</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">bool <i>nullsLast</i></span>});</span>


### Implementation
```dart
Expr sort({
    bool descending = false,
    bool multithreaded = true,
    bool maintainOrder = false,
    bool nullsLast = false,
  }) =>
      Expr.sort(
          expr: this,
          options: SortOptions(
            descending: descending,
            multithreaded: multithreaded,
            maintainOrder: maintainOrder,
            nullsLast: nullsLast,
          ));
```

[Expr]: /reference/classes/expr/