---
title: "splitN"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] splitN</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr"><strong>required</strong> int n</span>});</span>


### Implementation
```dart
Expr splitN({required Expr by, required int n}) =>
      expr.strSplitn(by: by, n: n);
```

[Expr]: /reference/classes/expr