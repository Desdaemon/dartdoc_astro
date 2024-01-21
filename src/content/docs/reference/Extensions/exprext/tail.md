---
title: "tail"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] tail</strong>({<span class="nobr">[int] <i>length</i></span>});</span>


### Implementation
```dart
Expr tail({int length = 10}) =>
      Expr.slice(input: this, offset: (-length).expr, length: length.expr);
```

[Expr]: /reference/classes/expr/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html