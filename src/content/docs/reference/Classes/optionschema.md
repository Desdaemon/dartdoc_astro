---
title: "OptionSchema"
description: |

---
*Inheritance*:  
<code>[RustOpaque]</code> &rsaquo; `OptionSchema`


### Constructors
<dl>
<dt>

<span class="dart-code"><strong>OptionSchema.[dcoDecode](dcodecode)</strong>(<span class="nobr">List&lt;dynamic&gt; wire</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>OptionSchema.[sseDecode](ssedecode)</strong>(<span class="nobr">int ptr</span>, <span class="nobr">int externalSizeOnNative</span>);</span>
</dt>
</dl>



## Inherited from `RustOpaque`

### Properties
<dl>
<dt>

<span class="dart-code"><strong>[move=](/reference/classes/rustopaque/move)</strong>(bool?);</span>
</dt>
<dt>

<span class="dart-code">bool <strong>get [isDisposed](/reference/classes/rustopaque/isdisposed)</strong>;</span>
</dt>
<dd>

 Whether the underlying `Arc` is disposed.
</dd>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">Pointer&lt;Void&gt; [<strong>cstEncode](/reference/classes/rustopaque/cstencode)</strong>({<span class="nobr">bool? <i>move</i></span>});</span>
</dt>
<dd>

 {@macro flutter_rust_bridge.only_for_generated_code}
</dd>
<dt>

<span class="dart-code">int [<strong>sseEncode](/reference/classes/rustopaque/sseencode)</strong>({<span class="nobr">bool? <i>move</i></span>});</span>
</dt>
<dd>

 {@macro flutter_rust_bridge.only_for_generated_code}
</dd>
<dt>

<span class="dart-code">void [<strong>dispose](/reference/classes/rustopaque/dispose)</strong>();</span>
</dt>
<dd>

 Dispose the underlying `Arc`.
</dd>
</dl>

[RustOpaque]: /reference/classes/rustopaque