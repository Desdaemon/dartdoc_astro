---
title: "asUtcDatetime"
description: |
   If this series contains [DateTime]s, returns its Dart representation.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>List\<DateTime?> asUtcDatetime</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 If this series contains [DateTime]s, returns its Dart representation.

 If a timezone is defined by this series, the datetimes will be converted to UTC.
 Otherwise, the datetimes are assumed to be in UTC.
### Implementation
```dart
/// If this series contains [DateTime]s, returns its Dart representation.
  ///
  /// If a timezone is defined by this series, the datetimes will be converted to UTC.
  /// Otherwise, the datetimes are assumed to be in UTC.
  List<DateTime?> asUtcDatetime({dynamic hint}) =>
      RustLib.instance.api.seriesAsUtcDatetime(
        that: this,
      );
```

[dynamic]: #