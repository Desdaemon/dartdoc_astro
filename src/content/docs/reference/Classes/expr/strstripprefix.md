---
title: "strStripPrefix"
description: |
   TODO: Docs for strip_prefix
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strStripPrefix</strong>({<span class="nobr"><strong>required</strong> [Expr] prefix</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for strip_prefix
### Implementation
```dart
/// TODO: Docs for strip_prefix
  Expr strStripPrefix({required Expr prefix, dynamic hint}) =>
      RustLib.instance.api.exprStrStripPrefix(
        that: this,
        prefix: prefix,
      );
```

[Expr]: /reference/classes/expr