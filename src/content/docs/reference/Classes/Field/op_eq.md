---
title: "=="
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>bool operator ==</strong>(<span class="nobr">Object other</span>);</span>


### Implementation
```dart
@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Field &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          dtype == other.dtype;
```

