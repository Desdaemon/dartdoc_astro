---
title: "cols"
description: |

---
<span class="dart-code"><strong>[Expr] cols</strong>(<span class="nobr">[Iterable]\<[String]> columns</span>);</span>


### Implementation
```dart
Expr cols(Iterable<String> columns) =>
    Expr.columns(columns.toList(growable: false));
```

[Expr]: /reference/classes/expr/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[Iterable]: https://api.flutter.dev/flutter/dart-core/Iterable-class.html