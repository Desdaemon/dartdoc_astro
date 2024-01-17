---
title: "dtype"
description: |

---
<span class="dart-code"><strong>[DataType] dtype</strong>();</span>


### Implementation
```dart
DataType get dtype => DataType.datetime(
      _kIsWeb ? TimeUnit.milliseconds : TimeUnit.microseconds);
```

[DataType]: /reference/classes/datatype/