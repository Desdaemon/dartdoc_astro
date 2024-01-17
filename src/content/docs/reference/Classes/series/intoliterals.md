---
title: "intoLiterals"
description: |
   @nodoc
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Literals] intoLiterals</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 @nodoc
### Implementation
```dart
/// @nodoc
  Literals intoLiterals({dynamic hint}) =>
      RustLib.instance.api.seriesIntoLiterals(
        that: this,
      );
```

[Literals]: /reference/classes/literals/