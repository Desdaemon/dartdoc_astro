---
title: "extract"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] extract</strong>(<span class="nobr">[String] pat</span>, {<span class="nobr"><strong>required</strong> [int] groupIndex</span>});</span>


### Implementation
```dart
Expr extract(String pat, {required int groupIndex}) =>
      expr.strExtract(pat: pat, groupIndex: groupIndex);
```

[Expr]: /reference/classes/expr/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html