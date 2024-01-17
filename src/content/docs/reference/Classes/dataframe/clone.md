---
title: "clone"
description: |

sidebar: {hidden: true}
---
<span class="dart-code"><strong>[DataFrame] clone</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>


### Implementation
```dart
DataFrame clone({dynamic hint}) => RustLib.instance.api.dataFrameClone(
        that: this,
      );
```

[DataFrame]: /reference/classes/dataframe/