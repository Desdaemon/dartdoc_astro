---
title: "ofLits"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Series] ofLits</strong>({<span class="nobr">String <i>name</i></span>, <span class="nobr"><strong>required</strong> [Literals] values</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
static Series ofLits(
          {String name = r"", required Literals values, dynamic hint}) =>
      RustLib.instance.api.seriesOfLits(name: name, values: values, hint: hint);
```

[Series]: /reference/classes/series
[Literals]: /reference/classes/literals