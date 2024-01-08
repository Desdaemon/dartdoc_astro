---
title: "sort"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] sort</strong>({<span class="nobr"><strong>required</strong> String byColumn</span>, <span class="nobr">bool <i>descending</i></span>, <span class="nobr">bool <i>nullsLast</i></span>, <span class="nobr">bool <i>multithreaded</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
LazyFrame sort(
          {required String byColumn,
          bool descending = false,
          bool nullsLast = false,
          bool multithreaded = true,
          bool maintainOrder = false,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameSort(
        that: this,
        byColumn: byColumn,
        descending: descending,
        nullsLast: nullsLast,
        multithreaded: multithreaded,
        maintainOrder: maintainOrder,
      );
```

[LazyFrame]: /reference/classes/lazyframe
[dynamic]: #