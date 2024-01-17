---
title: "count"
description: |

---
<span class="dart-code"><strong>[Expr] count</strong>();</span>


### Implementation
```dart
Expr get count => RustLib.instance.api.exprCount(
        that: this,
      );
```

[Expr]: /reference/classes/expr/