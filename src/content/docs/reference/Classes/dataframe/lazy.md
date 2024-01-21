---
title: "lazy"
description: |
   Returns a [LazyFrame] to which operations can be applied lazily.
   As opposed to [LazyFrame], [DataFrame] by default applies its operations eagerly.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LazyFrame] lazy</strong>({<span class="nobr">[bool] <i>projectionPushdown</i></span>, <span class="nobr">[bool] <i>predicatePushdown</i></span>, <span class="nobr">[bool] <i>typeCoercion</i></span>, <span class="nobr">[bool] <i>simplifyExpressions</i></span>, <span class="nobr">[bool] <i>slicePushdown</i></span>, <span class="nobr">[bool] <i>streaming</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a [LazyFrame] to which operations can be applied lazily.
 As opposed to [LazyFrame], [DataFrame] by default applies its operations eagerly.
### Implementation
```dart
/// Returns a [LazyFrame] to which operations can be applied lazily.
  /// As opposed to [LazyFrame], [DataFrame] by default applies its operations eagerly.
  LazyFrame lazy(
          {bool? projectionPushdown,
          bool? predicatePushdown,
          bool? typeCoercion,
          bool? simplifyExpressions,
          bool? slicePushdown,
          bool? streaming,
          dynamic hint}) =>
      RustLib.instance.api.dataFrameLazy(
        that: this,
        projectionPushdown: projectionPushdown,
        predicatePushdown: predicatePushdown,
        typeCoercion: typeCoercion,
        simplifyExpressions: simplifyExpressions,
        slicePushdown: slicePushdown,
        streaming: streaming,
      );
```

[LazyFrame]: /reference/classes/lazyframe/
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html