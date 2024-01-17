---
title: "listLen"
description: |
   TODO: Docs for len
---
<span class="dart-code"><strong>[Expr] listLen</strong>();</span>

 TODO: Docs for len
### Implementation
```dart
/// TODO: Docs for len
  Expr get listLen => RustLib.instance.api.exprListLen(
        that: this,
      );
```

[Expr]: /reference/classes/expr/