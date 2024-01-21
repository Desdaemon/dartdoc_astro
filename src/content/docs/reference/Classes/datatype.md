---
title: "DataType"
description: |
   Supported datatypes in a [DataFrame].
---
 Supported datatypes in a [DataFrame].

### Constructors
<dl>
<dt>

<span class="dart-code"><strong>const factory DataType.[boolean](boolean)</strong>();</span>
</dt>
<dd>

 Boolean
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[uint8](uint8)</strong>();</span>
</dt>
<dd>

 Unsigned 8-bit integer
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[uint16](uint16)</strong>();</span>
</dt>
<dd>

 Unsigned 16-bit integer
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[uint32](uint32)</strong>();</span>
</dt>
<dd>

 Unsigned 32-bit integer
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[uint64](uint64)</strong>();</span>
</dt>
<dd>

 Unsigned 64-bit integer
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[int8](int8)</strong>();</span>
</dt>
<dd>

 Signed 8-bit integer
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[int16](int16)</strong>();</span>
</dt>
<dd>

 Signed 16-bit integer
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[int32](int32)</strong>();</span>
</dt>
<dd>

 Signed 32-bit integer
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[int64](int64)</strong>();</span>
</dt>
<dd>

 Signed 64-bit integer, the default [int] on native platforms.
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[float32](float32)</strong>();</span>
</dt>
<dd>

 Single-precision floating point number
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[float64](float64)</strong>();</span>
</dt>
<dd>

 Double-precision floating point number, aka a [double].
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[utf8](utf8)</strong>();</span>
</dt>
<dd>

 String data
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[binary](binary)</strong>();</span>
</dt>
<dd>

 Raw bytes.
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[date](date)</strong>();</span>
</dt>
<dd>

 A 32-bit date representing the elapsed time since UNIX epoch (1970-01-01)
 in days (32 bits).
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[datetime](datetime)</strong>(<span class="nobr">[TimeUnit] field0</span>, [<i><span class="nobr">[String] field1</span></i>]);</span>
</dt>
<dd>

 A 64-bit date representing the elapsed time since UNIX epoch (1970-01-01)
 in the given timeunit (64 bits), with optional timezone.
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[duration](duration)</strong>(<span class="nobr">[TimeUnit] field0</span>);</span>
</dt>
<dd>

 64-bit integer representing difference between times in milliseconds or nanoseconds
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[time](time)</strong>();</span>
</dt>
<dd>

 A 64-bit time representing the elapsed time since midnight in nanoseconds
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[list](list)</strong>(<span class="nobr">[DataType] field0</span>);</span>
</dt>
<dd>

 A typed list.
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[struct](struct)</strong>(<span class="nobr">[List]\<[Field]> field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory DataType.[Null](null)</strong>();</span>
</dt>
<dd>

 Null value.
</dd>
<dt>

<span class="dart-code"><strong>const factory DataType.[unknown](unknown)</strong>();</span>
</dt>
<dd>

 Some logical types we cannot know statically, e.g. Datetime
</dd>
</dl>



## Inherited from `_$DataType`

[TimeUnit]: /reference/enums/timeunit/
[String]: https://api.flutter.dev/flutter/dart-core/String-class.html
[DataType]: /reference/classes/datatype/
[Field]: /reference/classes/field/
[List]: https://api.flutter.dev/flutter/dart-core/List-class.html