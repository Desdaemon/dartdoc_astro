---
title: "[]"
description: |
   Retrieves the columns either by name or index.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] operator []</strong>(<span class="nobr">[Object] key</span>);</span>

 Retrieves the columns either by name or index.
### Implementation
```dart
/// Retrieves the columns either by name or index.
  Series operator [](Object key) {
    if (key is String) {
      return column(column: key);
    }
    if (key is num) {
      return columnAt(index: key.toInt());
    }

    throw ArgumentError.value(key, 'key', 'must be a String or an integer');
  }
```

[Series]: /reference/classes/series/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html