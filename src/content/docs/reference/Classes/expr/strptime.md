---
title: "strptime"
description: |
   - `dtype` A temporal data type, i.e. Date, DateTime, or Time.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] strptime</strong>({<span class="nobr"><strong>required</strong> [DataType] dtype</span>, <span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>, <span class="nobr">[Ambiguous] <i>ambiguous</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 - `dtype` A temporal data type, i.e. Date, DateTime, or Time.
### Implementation
```dart
/// - `dtype` A temporal data type, i.e. Date, DateTime, or Time.
  Expr strptime(
          {required DataType dtype,
          String? format,
          bool strict = true,
          bool exact = true,
          bool cache = true,
          Ambiguous ambiguous = Ambiguous.raise,
          dynamic hint}) =>
      RustLib.instance.api.exprStrptime(
        that: this,
        dtype: dtype,
        format: format,
        strict: strict,
        exact: exact,
        cache: cache,
        ambiguous: ambiguous,
      );
```

[Expr]: /reference/classes/expr
[DataType]: /reference/classes/datatype
[Ambiguous]: /reference/enums/ambiguous