---
title: "when"
description: |
   Begin a chain of [when-then-otherwise](https://docs.pola.rs/user-guide/expressions/functions/#conditionals) expressions.
---
<span class="dart-code"><strong>[When] when</strong>(<span class="nobr">[Object] condition</span>, {<span class="nobr"><strong>required</strong> [Object] then</span>});</span>

 Begin a chain of [when-then-otherwise](https://docs.pola.rs/user-guide/expressions/functions/#conditionals) expressions.

 **Example:**
 ```dart
 final data = await df.clone().lazy().select([
   when(col('a') > 0, then: col('a') * 2)
     .when(col('a') < 0, then: col('a') * 3)
     .otherwise(col('a'))
     .alias('new_a'),
 ]).collect();
 ```
### Implementation
```dart
/// Begin a chain of [when-then-otherwise](https://docs.pola.rs/user-guide/expressions/functions/#conditionals) expressions.
///
/// **Example:**
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

[When]: /reference/classes/when/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html