---
title: "rename"
description: |
   Rename this series to [name] in-place.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>void rename</strong>({<span class="nobr"><strong>required</strong> [String] name</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Rename this series to [name] in-place.
### Implementation
```dart
/// Rename this series to [name] in-place.
  void rename({required String name, dynamic hint}) =>
      RustLib.instance.api.seriesRename(
        that: this,
        name: name,
      );
```

[String]: https://api.flutter.dev/flutter/dart-core/String-class.html