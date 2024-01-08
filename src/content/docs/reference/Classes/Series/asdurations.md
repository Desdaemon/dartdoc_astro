---
title: "asDurations"
description: |
   If this series contains [Duration]s, returns its Dart representation.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>List\<Duration?> asDurations</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 If this series contains [Duration]s, returns its Dart representation.
### Implementation
```dart
/// If this series contains [Duration]s, returns its Dart representation.
  List<Duration?> asDurations({dynamic hint}) =>
      RustLib.instance.api.seriesAsDurations(
        that: this,
      );
```

[dynamic]: #