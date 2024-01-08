---
title: "strToTime"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strToTime</strong>({<span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr strToTime(
          {String? format,
          bool strict = true,
          bool exact = true,
          bool cache = true,
          dynamic hint}) =>
      RustLib.instance.api.exprStrToTime(
        that: this,
        format: format,
        strict: strict,
        exact: exact,
        cache: cache,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #