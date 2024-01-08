---
title: "append"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Expr] append</strong>({<span class="nobr"><strong>required</strong> [Expr] other</span>, <span class="nobr">bool <i>upcast</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
Expr append({required Expr other, bool upcast = true, dynamic hint}) =>
      RustLib.instance.api.exprAppend(
        that: this,
        other: other,
        upcast: upcast,
      );
```

[Expr]: /reference/classes/expr