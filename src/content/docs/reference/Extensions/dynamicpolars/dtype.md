---
title: "dtype"
description: |

---
<span class="dart-code"><strong>[DataType] dtype</strong>();</span>


### Implementation
```dart
DataType get dtype => switch (this) {
        int value => value.dtype,
        double value => value.dtype,
        String value => value.dtype,
        bool value => value.dtype,
        DateTime value => value.dtype,
        Duration value => value.dtype,
        null => const DataType.Null(),
        _ => const DataType.unknown(),
      };
```

[DataType]: /reference/classes/datatype/