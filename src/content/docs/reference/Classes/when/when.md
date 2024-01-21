---
title: "when"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[When] when</strong>(<span class="nobr">[Object] condition</span>, {<span class="nobr"><strong>required</strong> [Object] then</span>});</span>


### Implementation
```dart
When when(Object? condition, {required Object? then}) {
    _chains.add((condition.expr, then.expr));
    return this;
  }
```

[When]: /reference/classes/when/
[Object]: https://api.flutter.dev/flutter/dart-core/Object-class.html