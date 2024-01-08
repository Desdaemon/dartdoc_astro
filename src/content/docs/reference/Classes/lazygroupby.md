---
title: "LazyGroupBy"
description: |

---
*Inheritance*:  
<code>[RustOpaque]</code> &rsaquo; `LazyGroupBy`


### Constructors
<dl>
<dt>

<span class="dart-code"><strong>LazyGroupBy.[dcoDecode](dcodecode)</strong>(<span class="nobr">List&lt;dynamic&gt; wire</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>LazyGroupBy.[sseDecode](ssedecode)</strong>(<span class="nobr">int ptr</span>, <span class="nobr">int externalSizeOnNative</span>);</span>
</dt>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[LazyFrame] [<strong>agg](agg)</strong>({<span class="nobr"><strong>required</strong> List&lt;Expr&gt; exprs</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Group by and aggregate.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>head](head)</strong>({<span class="nobr">int? <i>n</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Return the first [n] rows of each group.
</dd>
<dt>

<span class="dart-code">[LazyFrame] [<strong>tail](tail)</strong>({<span class="nobr">int? <i>n</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Return the last [n] rows of each group.
</dd>
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
[LazyFrame]: /reference/classes/lazyframe