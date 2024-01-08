---
title: dtypes
description: |
  
---
<span class="dart-code"><strong>[Expr] dtypes</strong>(<span class="nobr">Iterable\<DataType> dtypes</span>);</span>


### Implementation
```dart
Expr dtypes(Iterable<DataType> dtypes) =>
    Expr.dtypeColumn(dtypes.toList(growable: false));
```

[Expr]: /reference/classes/expr