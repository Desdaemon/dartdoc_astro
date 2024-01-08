---
title: initialize
description: |
  
---
<span class="dart-code"><strong>Future\<void> initialize</strong>({<span class="nobr">[ExternalLibrary?] <i>dylib</i></span>});</span>


### Implementation
```dart
Future<void> initialize({ExternalLibrary? dylib}) {
  return RustLib.init(externalLibrary: dylib);
}
```

[ExternalLibrary?]: /reference/classes/externallibrary