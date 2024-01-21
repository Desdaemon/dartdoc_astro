---
title: "of"
description: |
   Create a schema from a list of [Field]s.
sidebar: {hidden: true}
---
<span class="dart-code"><strong>[Schema] of</strong>({<span class="nobr"><strong>required</strong> [List]\<[Field]> fields</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>

 Create a schema from a list of [Field]s.
### Implementation
```dart
/// Create a schema from a list of [Field]s.
  static Schema of({required List<Field> fields, dynamic hint}) =>
      RustLib.instance.api.schemaOf(fields: fields, hint: hint);
```

[Schema]: /reference/classes/schema/
[Field]: /reference/classes/field/
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html