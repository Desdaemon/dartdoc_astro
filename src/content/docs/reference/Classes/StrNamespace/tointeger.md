---
title: "toInteger"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] toInteger</strong>({<span class="nobr"><strong>required</strong> int base</span>, <span class="nobr">bool <i>strict</i></span>});</span>


### Implementation
```dart
Expr toInteger({required int base, bool strict = true}) =>
      expr.strToInteger(base: base, strict: strict);
```

[Expr]: /reference/classes/expr