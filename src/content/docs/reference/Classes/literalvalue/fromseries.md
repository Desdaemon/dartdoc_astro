---
title: "fromSeries"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[LiteralValue] fromSeries</strong>({<span class="nobr"><strong>required</strong> [Series] series</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
static LiteralValue fromSeries({required Series series, dynamic hint}) =>
      RustLib.instance.api.literalValueFromSeries(series: series, hint: hint);
```

[LiteralValue]: /reference/classes/literalvalue
[Series]: /reference/classes/series