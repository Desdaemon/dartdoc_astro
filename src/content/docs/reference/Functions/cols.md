---
title: cols
description: |
  
---
<code><strong>[Expr] cols</strong>(columns);</code>



Parameter|Type|Default|
-|-|-|
`columns`|<code>Iterable\<String></code>||

### Implementation
```dart
Expr cols(Iterable<String> columns) =>
    Expr.columns(columns.toList(growable: false));
```

[Expr]: /reference/classes/expr