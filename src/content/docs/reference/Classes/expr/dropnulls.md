---
title: "dropNulls"
description: |

---
<span class="dart-code"><strong>[Expr] dropNulls</strong>();</span>


### Implementation
```dart
Expr get dropNulls => RustLib.instance.api.exprDropNulls(
        that: this,
      );
```

[Expr]: /reference/classes/expr