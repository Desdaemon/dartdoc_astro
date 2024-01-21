---
title: "initialize"
description: |

---
<span class="dart-code"><strong>[Future]\<void> initialize</strong>({<span class="nobr">[ExternalLibrary] <i>dylib</i></span>});</span>


### Implementation
```dart
Future<void> initialize({ExternalLibrary? dylib}) {
  return RustLib.init(externalLibrary: dylib);
}
```

[Future]: https://api.flutter.dev/flutter/dart-async/Future-class.html
[ExternalLibrary]: /reference/classes/externallibrary/