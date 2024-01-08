---
title: "schema"
description: |
   Returns the [Schema] of this dataframe.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Schema] schema</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>

 Returns the [Schema] of this dataframe.
### Implementation
```dart
/// Returns the [Schema] of this dataframe.
  Schema schema({dynamic hint}) => RustLib.instance.api.dataFrameSchema(
        that: this,
      );
```

[Schema]: /reference/classes/schema