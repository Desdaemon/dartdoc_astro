---
title: "asStrings"
description: |
   If this series is a UTF-8 series, returns its Dart representation.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[List]\<[String]> asStrings</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 If this series is a UTF-8 series, returns its Dart representation.
### Implementation
```dart
/// If this series is a UTF-8 series, returns its Dart representation.
  List<String?> asStrings({dynamic hint}) =>
      RustLib.instance.api.seriesAsStrings(
        that: this,
      );
```

[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html