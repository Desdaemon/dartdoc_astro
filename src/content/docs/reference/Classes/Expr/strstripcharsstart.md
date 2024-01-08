---
title: "strStripCharsStart"
description: |
   TODO: Docs for strip_chars_start
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strStripCharsStart</strong>({<span class="nobr"><strong>required</strong> [Expr] matches</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for strip_chars_start
### Implementation
```dart
/// TODO: Docs for strip_chars_start
  Expr strStripCharsStart({required Expr matches, dynamic hint}) =>
      RustLib.instance.api.exprStrStripCharsStart(
        that: this,
        matches: matches,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #