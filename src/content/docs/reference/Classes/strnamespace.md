---
title: "StrNamespace"
description: |
   Sugar for `Expr.str*` methods.
---

 Sugar for `Expr.str*` methods.

 See [Strings](https://docs.pola.rs/user-guide/expressions/strings) for more details.

 Many functions in this namespace accept a `pat` parameter, which is parsed
 as a regular expression except when the parameter `literal` is set to `true`.

### Constructors
<dl>
<dt>

<span class="dart-code"><strong>const StrNamespace</strong>(<span class="nobr">[Expr] expr</span>);</span>
</dt>
</dl>

### Fields
<dl>
<dt>

<span class="dart-code"><strong>final </strong>[Expr] <strong>expr</strong>;</span>
</dt>
</dl>

### Properties
<dl>
<dt>

<span class="dart-code">[Expr] <strong>get [toLowercase](tolowercase)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [toUppercase](touppercase)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [lenBytes](lenbytes)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [lenChars](lenchars)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [explode](explode)</strong>;</span>
</dt>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[Expr] [<strong>containsLiteral](containsliteral)</strong>(<span class="nobr">Object? pat</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>contains](contains)</strong>(<span class="nobr">Object? pat</span>, {<span class="nobr">bool <i>strict</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>endsWith](endswith)</strong>(<span class="nobr">Object? pat</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>extract](extract)</strong>(<span class="nobr">String pat</span>, {<span class="nobr"><strong>required</strong> int groupIndex</span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>extractAll](extractall)</strong>(<span class="nobr">Object? pat</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>countMatches](countmatches)</strong>(<span class="nobr">Object? pat</span>, {<span class="nobr">bool <i>literal</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>concat](concat)</strong>(<span class="nobr">String delimiter</span>, {<span class="nobr">bool <i>ignoreNulls</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>splitN](splitn)</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr"><strong>required</strong> int n</span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>replace](replace)</strong>(<span class="nobr">Object? pat</span>, <span class="nobr">Object? val</span>, {<span class="nobr">bool <i>literal</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>replaceN](replacen)</strong>(<span class="nobr">Object? pat</span>, <span class="nobr">Object? val</span>, {<span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">bool <i>literal</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>replaceAll](replaceall)</strong>(<span class="nobr">Object? pat</span>, <span class="nobr">Object? val</span>, {<span class="nobr">bool <i>literal</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>stripChars](stripchars)</strong>(<span class="nobr">Object? matches</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>stripCharsStart](stripcharsstart)</strong>(<span class="nobr">Object? matches</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>stripCharsEnd](stripcharsend)</strong>(<span class="nobr">Object? matches</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>stripPrefix](stripprefix)</strong>(<span class="nobr">Object? prefix</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>stripSuffix](stripsuffix)</strong>(<span class="nobr">Object? suffix</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>toInteger](tointeger)</strong>({<span class="nobr"><strong>required</strong> int base</span>, <span class="nobr">bool <i>strict</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>slice](slice)</strong>(<span class="nobr">int start</span>, <span class="nobr">int? length</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>strptime](strptime)</strong>(<span class="nobr">[DataType] dtype</span>, {<span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>, <span class="nobr">[Ambiguous] <i>ambiguous</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>toDate](todate)</strong>({<span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>toDatetime](todatetime)</strong>({<span class="nobr">String? <i>format</i></span>, <span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timeZone</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>toTime](totime)</strong>({<span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>split](split)</strong>({<span class="nobr"><strong>required</strong> Object? by</span>, <span class="nobr">bool <i>inclusive</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>splitExact](splitexact)</strong>({<span class="nobr"><strong>required</strong> Object? by</span>, <span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">bool <i>inclusive</i></span>});</span>
</dt>
</dl>



[Expr]: /reference/classes/expr
[DataType]: /reference/classes/datatype
[Ambiguous]: /reference/enums/ambiguous
[TimeUnit?]: /reference/enums/timeunit