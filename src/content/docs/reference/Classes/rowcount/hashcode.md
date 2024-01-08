---
title: "hashCode"
description: |

---
<span class="dart-code"><strong>int hashCode</strong>();</span>


### Implementation
```dart
@override
  int get hashCode => name.hashCode ^ offset.hashCode;
```

