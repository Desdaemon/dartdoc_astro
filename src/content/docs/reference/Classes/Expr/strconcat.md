---
title: "strConcat"
description: |
   TODO: Docs for concat
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strConcat</strong>({<span class="nobr"><strong>required</strong> String delimiter</span>, <span class="nobr">bool <i>ignoreNulls</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 TODO: Docs for concat
### Implementation
```dart
/// TODO: Docs for concat
  Expr strConcat(
          {required String delimiter, bool ignoreNulls = true, dynamic hint}) =>
      RustLib.instance.api.exprStrConcat(
        that: this,
        delimiter: delimiter,
        ignoreNulls: ignoreNulls,
      );
```

[Expr]: /reference/classes/expr
[dynamic]: #