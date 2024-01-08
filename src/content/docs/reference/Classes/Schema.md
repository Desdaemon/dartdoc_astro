---
title: "Schema"
description: |
  
---
*Inheritance*  
<code>[RustOpaque]</code> &rsaquo;
 `Schema`



### Constructors
<dl>
<dt>

<span class="dart-code"><strong>Schema.[dcoDecode](dcoDecode)</strong>(<span class="nobr">List\<dynamic> wire</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>Schema.[sseDecode](sseDecode)</strong>(<span class="nobr">int ptr</span>, <span class="nobr">int externalSizeOnNative</span>);</span>
</dt>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code"><strong>static</strong> [Schema] Schema.[<strong>of](of)</strong>({<span class="nobr"><strong>required</strong> List\<Field> fields</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Create a schema from a list of [Field]s.
</dd>
</dl>



## Inherited from `RustOpaque`

### Properties
<dl>
<dt>

<span class="dart-code"><strong>[move=](move=)</strong>(bool?);</span>
</dt>
<dt>

<span class="dart-code">bool <strong>get [isDisposed](isDisposed)</strong>;</span>
</dt>
<dd>

 Whether the underlying `Arc` is disposed.
</dd>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">Pointer\<Void> [<strong>cstEncode](cstEncode)</strong>({<span class="nobr">bool? <i>move</i></span>});</span>
</dt>
<dd>

 {@macro flutter_rust_bridge.only_for_generated_code}
</dd>
<dt>

<span class="dart-code">int [<strong>sseEncode](sseEncode)</strong>({<span class="nobr">bool? <i>move</i></span>});</span>
</dt>
<dd>

 {@macro flutter_rust_bridge.only_for_generated_code}
</dd>
<dt>

<span class="dart-code">void [<strong>dispose](dispose)</strong>();</span>
</dt>
<dd>

 Dispose the underlying `Arc`.
</dd>
</dl>

[RustOpaque]: /reference/classes/rustopaque
[Schema]: /reference/classes/schema
[dynamic]: #
[void]: #