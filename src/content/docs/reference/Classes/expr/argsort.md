---
title: "argSort"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] argSort</strong>({<span class="nobr">bool <i>descending</i></span>, <span class="nobr">bool <i>nullsLast</i></span>, <span class="nobr">bool <i>multithreaded</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr argSort(
          {bool descending = false,
          bool nullsLast = false,
          bool multithreaded = true,
          bool maintainOrder = false,
          dynamic hint}) =>
      RustLib.instance.api.exprArgSort(
        that: this,
        descending: descending,
        nullsLast: nullsLast,
        multithreaded: multithreaded,
        maintainOrder: maintainOrder,
      );
```

[Expr]: /reference/classes/expr/