---
title: "log"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] log</strong>({<span class="nobr"><strong>required</strong> [double] base</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr log({required double base, dynamic hint}) =>
      RustLib.instance.api.exprLog(
        that: this,
        base: base,
      );
```

[Expr]: /reference/classes/expr/
[double]: https://api.flutter.dev/flutter/dart-core/double-class.html