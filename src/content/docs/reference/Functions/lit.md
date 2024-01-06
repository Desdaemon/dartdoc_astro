---
title: lit
description: |
   Alias for `Object.expr`.
---
<code><strong>[Expr] lit</strong>(value);</code>

 Alias for `Object.expr`.

Parameter|Type|Default|
-|-|-|
`value`|<code>Object?</code>||

### Implementation
```dart
/// Alias for `Object.expr`.
Expr lit(Object? value) => value.expr;
```

[Expr]: /reference/classes/expr