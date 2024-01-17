---
title: "strLenChars"
description: |
   TODO: Docs for len_chars
---
<span class="dart-code"><strong>[Expr] strLenChars</strong>();</span>

 TODO: Docs for len_chars
### Implementation
```dart
/// TODO: Docs for len_chars
  Expr get strLenChars => RustLib.instance.api.exprStrLenChars(
        that: this,
      );
```

[Expr]: /reference/classes/expr/