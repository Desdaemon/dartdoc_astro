---
title: "entropy"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] entropy</strong>({<span class="nobr"><strong>required</strong> double base</span>, <span class="nobr">bool <i>normalize</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr entropy({required double base, bool normalize = false, dynamic hint}) =>
      RustLib.instance.api.exprEntropy(
        that: this,
        base: base,
        normalize: normalize,
      );
```

[Expr]: /reference/classes/expr/