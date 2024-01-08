---
title: "dropNans"
description: |

---
<span class="dart-code"><strong>[Expr] dropNans</strong>();</span>


### Implementation
```dart
Expr get dropNans => RustLib.instance.api.exprDropNans(
        that: this,
      );
```

[Expr]: /reference/classes/expr