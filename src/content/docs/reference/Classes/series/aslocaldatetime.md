---
title: "asLocalDatetime"
description: |
   If this series contains [DateTime]s, returns its Dart representation.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[List]\<[DateTime]> asLocalDatetime</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 If this series contains [DateTime]s, returns its Dart representation.

 If a timezone is defined by this series, the datetimes will be converted to the local timezone.
 Otherwise, the datetimes are assumed to be in the local timezone.
### Implementation
```dart
/// If this series contains [DateTime]s, returns its Dart representation.
  ///
  /// If a timezone is defined by this series, the datetimes will be converted to the local timezone.
  /// Otherwise, the datetimes are assumed to be in the local timezone.
  List<DateTime?> asLocalDatetime({dynamic hint}) =>
      RustLib.instance.api.seriesAsLocalDatetime(
        that: this,
      );
```

[DateTime]: https://api.flutter.dev/flutter/dart-core/DateTime-class.html
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html