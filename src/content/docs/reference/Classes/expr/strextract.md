---
title: "strExtract"
description: |
   TODO: Docs for extract
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strExtract</strong>({<span class="nobr"><strong>required</strong> String pat</span>, <span class="nobr"><strong>required</strong> int groupIndex</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for extract
### Implementation
```dart
/// TODO: Docs for extract
  Expr strExtract(
          {required String pat, required int groupIndex, dynamic hint}) =>
      RustLib.instance.api.exprStrExtract(
        that: this,
        pat: pat,
        groupIndex: groupIndex,
      );
```

[Expr]: /reference/classes/expr