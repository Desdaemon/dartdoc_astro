---
title: "parseCell"
description: |

---
<span class="dart-code"><strong>dynamic parseCell</strong>(<span class="nobr">dynamic raw</span>);</span>


### Implementation
```dart
dynamic parseCell(dynamic raw) {
  if (raw is List && raw.length == 2) {
    final int data = raw.last;
    switch (raw.first) {
      case 'date':
        // data == days since epoch
        return _epoch.add(Duration(days: data)).toUtc();
      case 'time':
        // data == nanoseconds since midnight
        final seconds = data ~/ 1000000000;
        final microseconds = data % 1000000;
        final now = DateTime.now().toUtc();
        return DateTime.utc(now.year, now.month, now.day)
            .add(Duration(seconds: seconds, microseconds: microseconds));
      case 'duration':
        // data == microseconds
        return Duration(microseconds: data);
      case 'datetime':
        // data == microseconds since epoch
        return _epoch.add(Duration(microseconds: data));
    }
  }

  return raw;
}
```

