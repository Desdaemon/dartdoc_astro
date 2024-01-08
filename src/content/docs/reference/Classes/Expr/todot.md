---
title: "toDot"
description: |
   Returns a dot representation of this expression.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>String toDot</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns a dot representation of this expression.
### Implementation
```dart
/// Returns a dot representation of this expression.
  String toDot({dynamic hint}) => RustLib.instance.api.exprToDot(
        that: this,
      );
```

[dynamic]: #