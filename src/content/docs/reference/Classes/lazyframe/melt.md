---
title: "melt"
description: |
   [Melt](https://docs.pola.rs/user-guide/transformations/melt) this
   dataframe from the wide format to the long format.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] melt</strong>({<span class="nobr"><strong>required</strong> [List]\<[String]> idVars</span>, <span class="nobr"><strong>required</strong> [List]\<[String]> valueVars</span>, <span class="nobr">[String] <i>variableName</i></span>, <span class="nobr">[String] <i>valueName</i></span>, <span class="nobr">[bool] <i>streamable</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 [Melt](https://docs.pola.rs/user-guide/transformations/melt) this
 dataframe from the wide format to the long format.
### Implementation
```dart
/// [Melt](https://docs.pola.rs/user-guide/transformations/melt) this
  /// dataframe from the wide format to the long format.
  LazyFrame melt(
          {required List<String> idVars,
          required List<String> valueVars,
          String? variableName,
          String? valueName,
          bool streamable = true,
          dynamic hint}) =>
      RustLib.instance.api.lazyFrameMelt(
        that: this,
        idVars: idVars,
        valueVars: valueVars,
        variableName: variableName,
        valueName: valueName,
        streamable: streamable,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html