---
title: "cast"
description: |
   Attempt to [cast](https://docs.pola.rs/user-guide/expressions/casting) a column's [DataType] to a new one.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] cast</strong>(<span class="nobr">[DataType] dataType</span>, {<span class="nobr">bool <i>strict</i></span>});</span>

 Attempt to [cast](https://docs.pola.rs/user-guide/expressions/casting) a column's [DataType] to a new one.

 By default, strict mode is enabled and restricts certain types of casts:
 - String-to-numeric casts will throw if the string cannot be parsed as a number.
 - Downcasts (e.g. [int64] to [int32]) that result in overflowing values will throw.

 When strict mode is disabled, these casts will return null instead.
### Implementation
```dart
/// Attempt to [cast](https://docs.pola.rs/user-guide/expressions/casting) a column's [DataType] to a new one.
  ///
  /// By default, strict mode is enabled and restricts certain types of casts:
  /// - String-to-numeric casts will throw if the string cannot be parsed as a number.
  /// - Downcasts (e.g. [int64] to [int32]) that result in overflowing values will throw.
  ///
  /// When strict mode is disabled, these casts will return null instead.
  Expr cast(DataType dataType, {bool strict = true}) =>
      Expr.cast(expr: this, dataType: dataType, strict: strict);
```

[Expr]: /reference/classes/expr
[DataType]: /reference/classes/datatype