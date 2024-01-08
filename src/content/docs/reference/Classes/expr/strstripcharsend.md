---
title: "strStripCharsEnd"
description: |
   TODO: Docs for strip_chars_end
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strStripCharsEnd</strong>({<span class="nobr"><strong>required</strong> [Expr] matches</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for strip_chars_end
### Implementation
```dart
/// TODO: Docs for strip_chars_end
  Expr strStripCharsEnd({required Expr matches, dynamic hint}) =>
      RustLib.instance.api.exprStrStripCharsEnd(
        that: this,
        matches: matches,
      );
```

[Expr]: /reference/classes/expr