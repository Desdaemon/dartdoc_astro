---
title: initialize
description: |
  
---
<code><strong>Future\<void> initialize</strong>({<i>dylib</i>});</code>



Parameter|Type|Default|
-|-|-|
`dylib`|<code>[ExternalLibrary?]</code>||

### Implementation
```dart
Future<void> initialize({ExternalLibrary? dylib}) {
  return RustLib.init(externalLibrary: dylib);
}
```

[ExternalLibrary?]: /reference/classes/externallibrary