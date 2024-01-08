---
title: "ExprExt"
description: |
   Extensions for [Expr].
---
*Extends*  
<code>[Expr]</code>

 Extensions for [Expr].

### Properties
<dl>
<dt>

<span class="dart-code">[Expr] <strong>get [aggGroups](agggroups)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [explode](explode)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [flatten](flatten)</strong>;</span>
</dt>
<dd>

 Alias for [explode].
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [first](first)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [last](last)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [implode](implode)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [nUnique](nunique)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [nanMax](nanmax)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [nanMin](nanmin)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[StrNamespace] <strong>get [str](str)</strong>;</span>
</dt>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[Expr] [<strong>head](head)</strong>({<span class="nobr">int <i>length</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>tail](tail)</strong>({<span class="nobr">int <i>length</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>alias](alias)</strong>(<span class="nobr">String name</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>cast](cast)</strong>(<span class="nobr">[DataType] dataType</span>, {<span class="nobr">bool <i>strict</i></span>});</span>
</dt>
<dd>

 Attempt to [cast](https://docs.pola.rs/user-guide/expressions/casting) a column's [DataType] to a new one.
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>equalMissing](equalmissing)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>notEqualMissing](notequalmissing)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>exclude](exclude)</strong>(<span class="nobr">Iterable&lt;String&gt; columns</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>filter](filter)</strong>({<span class="nobr"><strong>required</strong> Object? by</span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>get](get)</strong>(<span class="nobr">Object? idx</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>gather](gather)</strong>(<span class="nobr">Object? idx</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>slice](slice)</strong>(<span class="nobr">int offset</span>, <span class="nobr">int length</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>sort](sort)</strong>({<span class="nobr">bool <i>descending</i></span>, <span class="nobr">bool <i>multithreaded</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">bool <i>nullsLast</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>std](std)</strong>(<span class="nobr">int ddof</span>);</span>
</dt>
<dd>

 Calculate the standard deviation of this expression with the specified
 [ddof] or [delta degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_(statistics)).
</dd>
</dl>

### Operators
<dl>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong><](op_lt)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is less than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong><=](op_le)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is no greater than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>>](op_gt)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is greater than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>>=](op_ge)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is no lesser than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>+](op_add)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the sum of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>-](op_sub)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the difference of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>*](op_mul)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the product of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>/](op_div)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the division of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>~/](op_idiv)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the integral division of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>%](op_mod)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Performs a modulo operation on this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>&](op_and)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether both this and [other] are true.
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>|](op_or)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether either this or [other] is true.
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>^](op_xor)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether at most one of this and [other] is true,
 i.e. whether this and [other] are not equal.
</dd>
</dl>


[Expr]: /reference/classes/expr
[StrNamespace]: /reference/classes/strnamespace
[DataType]: /reference/classes/datatype