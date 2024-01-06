---
title: when
description: |
   Begin a chain of [when-then-otherwise](https://docs.pola.rs/user-guide/expressions/functions/#conditionals) expressions.
---
<code><strong>[When] when</strong>(condition, {<strong>required</strong> then});</code>

 Begin a chain of [when-then-otherwise](https://docs.pola.rs/user-guide/expressions/functions/#conditionals) expressions.

 ### Example:
 ```dart
 final data = await df.clone().lazy().select([
   when(col('a') > 0, then: col('a') * 2)
     .when(col('a') < 0, then: col('a') * 3)
     .otherwise(col('a'))
     .alias('new_a'),
 ]).collect();
 ```

Parameter|Type|Default|
-|-|-|
`condition`|<code>Object?</code>||
`then`|<code>Object?</code>||

### Implementation
```dart
/// Begin a chain of [when-then-otherwise](https://docs.pola.rs/user-guide/expressions/functions/#conditionals) expressions.
///
/// ### Example:
/// ```dart
/// final data = await df.clone().lazy().select([
///   when(col('a') > 0, then: col('a') * 2)
///     .when(col('a') < 0, then: col('a') * 3)
///     .otherwise(col('a'))
///     .alias('new_a'),
/// ]).collect();
/// ```
When when(
  Object? condition, {
  required Object? then,
}) =>
    When(condition, then);
```

[When]: /reference/classes/when