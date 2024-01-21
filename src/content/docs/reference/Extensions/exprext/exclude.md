---
title: "exclude"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] exclude</strong>(<span class="nobr">[Iterable]\<[String]> columns</span>);</span>


### Implementation
```dart
Expr exclude(Iterable<String> columns) =>
      Expr.exclude(this, columns.map(Excluded.name).toList(growable: false));
```

[Expr]: /reference/classes/expr/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[Iterable]: https://api.flutter.dev/flutter/dart-core/Iterable-class.html