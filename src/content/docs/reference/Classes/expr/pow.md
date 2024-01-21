---
title: "pow"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] pow</strong>({<span class="nobr"><strong>required</strong> [double] exponent</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr pow({required double exponent, dynamic hint}) =>
      RustLib.instance.api.exprPow(
        that: this,
        exponent: exponent,
      );
```

[Expr]: /reference/classes/expr/
[double]: https://api.flutter.dev/flutter/dart-core/double-class.html