---
title: "filter"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] filter</strong>({<span class="nobr"><strong>required</strong> Object? by</span>});</span>


### Implementation
```dart
Expr filter({required Object? by}) => Expr.filter(input: this, by: by.expr);
```

[Expr]: /reference/classes/expr