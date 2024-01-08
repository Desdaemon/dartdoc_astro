---
title: "asNaiveDatetime"
description: |
   If this series contains [DateTime]s, returns its Dart representation.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>List\<DateTime?> asNaiveDatetime</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 If this series contains [DateTime]s, returns its Dart representation.

 Datetimes are parsed as-is, without any timezone correction.
### Implementation
```dart
/// If this series contains [DateTime]s, returns its Dart representation.
  ///
  /// Datetimes are parsed as-is, without any timezone correction.
  List<DateTime?> asNaiveDatetime({dynamic hint}) =>
      RustLib.instance.api.seriesAsNaiveDatetime(
        that: this,
      );
```

[dynamic]: #