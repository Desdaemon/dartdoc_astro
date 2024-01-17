---
title: "strToInteger"
description: |
   TODO: Docs for to_integer
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strToInteger</strong>({<span class="nobr"><strong>required</strong> int base</span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for to_integer
### Implementation
```dart
/// TODO: Docs for to_integer
  Expr strToInteger({required int base, bool strict = true, dynamic hint}) =>
      RustLib.instance.api.exprStrToInteger(
        that: this,
        base: base,
        strict: strict,
      );
```

[Expr]: /reference/classes/expr/