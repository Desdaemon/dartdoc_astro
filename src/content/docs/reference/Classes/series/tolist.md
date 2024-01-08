---
title: "toList"
description: |
   Returns an untyped list.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>List&lt;dynamic&gt; toList</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns an untyped list.
### Implementation
```dart
/// Returns an untyped list.
  List<dynamic> toList({dynamic hint}) => RustLib.instance.api.seriesToList(
        that: this,
      );
```

