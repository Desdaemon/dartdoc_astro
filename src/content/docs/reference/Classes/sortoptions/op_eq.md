---
title: "=="
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[bool] operator ==</strong>(<span class="nobr">[Object] other</span>);</span>


### Implementation
```dart
@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SortOptions &&
          runtimeType == other.runtimeType &&
          descending == other.descending &&
          nullsLast == other.nullsLast &&
          multithreaded == other.multithreaded &&
          maintainOrder == other.maintainOrder;
```

[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html