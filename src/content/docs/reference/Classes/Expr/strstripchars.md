---
title: "strStripChars"
description: |
   TODO: Docs for strip_chars
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strStripChars</strong>({<span class="nobr"><strong>required</strong> [Expr] matches</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for strip_chars
### Implementation
```dart
/// TODO: Docs for strip_chars
  Expr strStripChars({required Expr matches, dynamic hint}) =>
      RustLib.instance.api.exprStrStripChars(
        that: this,
        matches: matches,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #