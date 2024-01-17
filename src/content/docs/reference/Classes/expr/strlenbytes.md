---
title: "strLenBytes"
description: |
   TODO: Docs for len_bytes
---
<span class="dart-code"><strong>[Expr] strLenBytes</strong>();</span>

 TODO: Docs for len_bytes
### Implementation
```dart
/// TODO: Docs for len_bytes
  Expr get strLenBytes => RustLib.instance.api.exprStrLenBytes(
        that: this,
      );
```

[Expr]: /reference/classes/expr/