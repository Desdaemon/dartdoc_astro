---
title: "intoLiteral"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LiteralValue] intoLiteral</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
LiteralValue intoLiteral({dynamic hint}) =>
      RustLib.instance.api.seriesIntoLiteral(
        that: this,
      );
```

[LiteralValue]: /reference/classes/literalvalue