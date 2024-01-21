---
title: "range"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] range</strong>(<span class="nobr">[int] other</span>, {<span class="nobr">[DataType] <i>dataType</i></span>});</span>


### Implementation
```dart
Expr range(int other, {DataType? dataType}) {
    return Expr.literal(
      LiteralValue.range(
        low: this,
        high: other >= this ? other : this,
        dataType: dataType ?? dtype,
      ),
    );
  }
```

[Expr]: /reference/classes/expr/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html
[DataType]: /reference/classes/datatype/