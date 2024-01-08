---
title: "strStripSuffix"
description: |
   TODO: Docs for strip_suffix
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strStripSuffix</strong>({<span class="nobr"><strong>required</strong> [Expr] suffix</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for strip_suffix
### Implementation
```dart
/// TODO: Docs for strip_suffix
  Expr strStripSuffix({required Expr suffix, dynamic hint}) =>
      RustLib.instance.api.exprStrStripSuffix(
        that: this,
        suffix: suffix,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #