---
title: dtypes
description: |
  
---
<code><strong>[Expr] dtypes</strong>(dtypes);</code>



Parameter|Type|Default|
-|-|-|
`dtypes`|<code>Iterable\<DataType></code>||

### Implementation
```dart
Expr dtypes(Iterable<DataType> dtypes) =>
    Expr.dtypeColumn(dtypes.toList(growable: false));
```

[Expr]: /reference/classes/expr