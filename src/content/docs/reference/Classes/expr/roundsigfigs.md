---
title: "roundSigFigs"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] roundSigFigs</strong>({<span class="nobr"><strong>required</strong> int digits</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr roundSigFigs({required int digits, dynamic hint}) =>
      RustLib.instance.api.exprRoundSigFigs(
        that: this,
        digits: digits,
      );
```

[Expr]: /reference/classes/expr