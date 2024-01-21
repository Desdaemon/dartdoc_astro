---
title: "LiteralValue"
description: |
   Literal values for use in [Expr]essions.
---
 Literal values for use in [Expr]essions.

### Constructors
<dl>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[Null](null)</strong>();</span>
</dt>
<dd>

 Null value.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[boolean](boolean)</strong>(<span class="nobr">[bool] field0</span>);</span>
</dt>
<dd>

 A binary true or false.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[utf8](utf8)</strong>(<span class="nobr">[String] field0</span>);</span>
</dt>
<dd>

 A UTF8 encoded string type.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[binary](binary)</strong>(<span class="nobr">[Uint8List] field0</span>);</span>
</dt>
<dd>

 A raw binary array
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[uint32](uint32)</strong>(<span class="nobr">[int] field0</span>);</span>
</dt>
<dd>

 An unsigned 32-bit integer number.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[uint64](uint64)</strong>(<span class="nobr">[int] field0</span>);</span>
</dt>
<dd>

 An unsigned 64-bit integer number.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[int32](int32)</strong>(<span class="nobr">[int] field0</span>);</span>
</dt>
<dd>

 A 32-bit integer number.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[int64](int64)</strong>(<span class="nobr">[int] field0</span>);</span>
</dt>
<dd>

 A 64-bit integer number.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[float32](float32)</strong>(<span class="nobr">[double] field0</span>);</span>
</dt>
<dd>

 A 32-bit floating point number.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[float64](float64)</strong>(<span class="nobr">[double] field0</span>);</span>
</dt>
<dd>

 A 64-bit floating point number.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[range](range)</strong>({<span class="nobr"><strong>required</strong> [int] low</span>, <span class="nobr"><strong>required</strong> [int] high</span>, <span class="nobr"><strong>required</strong> [DataType] dataType</span>});</span>
</dt>
<dd>

 A range between integers.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[dateTime](datetime)</strong>(<span class="nobr">[int] field0</span>, <span class="nobr">[TimeUnit] field1</span>, [<i><span class="nobr">[String] field2</span></i>]);</span>
</dt>
<dd>

 Datetimes, with optional timezone.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[duration](duration)</strong>(<span class="nobr">[int] field0</span>, <span class="nobr">[TimeUnit] field1</span>);</span>
</dt>
<dd>

 Durations.
</dd>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[series](series)</strong>(<span class="nobr">[SpecialEqPSeries] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[date](date)</strong>(<span class="nobr">[int] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory LiteralValue.[time](time)</strong>(<span class="nobr">[int] field0</span>);</span>
</dt>
<dd>

 Nanoseconds elapsed since midnight.
</dd>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code"><strong>static</strong> [LiteralValue] [<strong>fromSeries](fromseries)</strong>({<span class="nobr"><strong>required</strong> [Series] series</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
</dl>


## `LiteralValueExt` extensions

### Properties
<dl>
<dt>

<span class="dart-code">[Expr] <strong>get [expr](/reference/extensions/literalvalueext/expr)</strong>;</span>
</dt>
<dd>

 Returns an expression representing this literal value.
</dd>
</dl>


## Inherited from `_$LiteralValue`

[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[Uint8List]: https://api.flutter.dev/flutter/dart-typed_data/Uint8List-class.html
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html
[double]: https://api.flutter.dev/flutter/dart-core/double-class.html
[DataType]: /reference/classes/datatype/
[TimeUnit]: /reference/enums/timeunit/
[SpecialEqPSeries]: /reference/classes/specialeqpseries/
[LiteralValue]: /reference/classes/literalvalue/
[Series]: /reference/classes/series/
[Expr]: /reference/classes/expr/