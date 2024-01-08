---
title: "Expr"
description: |
   Expressions for use in query and aggregration operations.
---
 Expressions for use in query and aggregration operations.

### Constructors
<dl>
<dt>

<span class="dart-code"><strong>const factory Expr.[alias](alias)</strong>(<span class="nobr">[Expr] field0</span>, <span class="nobr">String field1</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[column](column)</strong>(<span class="nobr">String field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[columns](columns)</strong>(<span class="nobr">List&lt;String&gt; field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[dtypeColumn](dtypecolumn)</strong>(<span class="nobr">List&lt;DataType&gt; field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[literal](literal)</strong>(<span class="nobr">[LiteralValue] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[binaryExpr](binaryexpr)</strong>({<span class="nobr"><strong>required</strong> [Expr] left</span>, <span class="nobr"><strong>required</strong> [Operator] op</span>, <span class="nobr"><strong>required</strong> [Expr] right</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[cast](cast)</strong>({<span class="nobr"><strong>required</strong> [Expr] expr</span>, <span class="nobr"><strong>required</strong> [DataType] dataType</span>, <span class="nobr"><strong>required</strong> bool strict</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[sort](sort)</strong>({<span class="nobr"><strong>required</strong> [Expr] expr</span>, <span class="nobr">[SortOptions] <i>options</i></span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[gather](gather)</strong>({<span class="nobr"><strong>required</strong> [Expr] expr</span>, <span class="nobr"><strong>required</strong> [Expr] idx</span>, <span class="nobr"><strong>required</strong> bool returnsScalar</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[sortBy](sortby)</strong>({<span class="nobr"><strong>required</strong> [Expr] expr</span>, <span class="nobr">List&lt;Expr&gt; <i>by</i></span>, <span class="nobr">List&lt;bool&gt; <i>descending</i></span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[agg](agg)</strong>(<span class="nobr">[AggExpr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[ternary](ternary)</strong>({<span class="nobr"><strong>required</strong> [Expr] predicate</span>, <span class="nobr"><strong>required</strong> [Expr] truthy</span>, <span class="nobr"><strong>required</strong> [Expr] falsy</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[explode](explode)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[filter](filter)</strong>({<span class="nobr"><strong>required</strong> [Expr] input</span>, <span class="nobr"><strong>required</strong> [Expr] by</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[wildcard](wildcard)</strong>();</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[window](window)</strong>({<span class="nobr"><strong>required</strong> [Expr] function</span>, <span class="nobr"><strong>required</strong> List&lt;Expr&gt; partitionBy</span>, <span class="nobr"><strong>required</strong> [WindowType] options</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[slice](slice)</strong>({<span class="nobr"><strong>required</strong> [Expr] input</span>, <span class="nobr"><strong>required</strong> [Expr] offset</span>, <span class="nobr"><strong>required</strong> [Expr] length</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[exclude](exclude)</strong>(<span class="nobr">[Expr] field0</span>, <span class="nobr">List&lt;Excluded&gt; field1</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[keepName](keepname)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[count](count)</strong>();</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[nth](nth)</strong>(<span class="nobr">int field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory Expr.[internal](internal)</strong>(<span class="nobr">[PExpr] field0</span>);</span>
</dt>
</dl>

### Properties
<dl>
<dt>

<span class="dart-code">[Expr] <strong>get [abs](abs)</strong>;</span>
</dt>
<dd>

 Similar to [gather] but allows for scalars.
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [arccos](arccos)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [arccosh](arccosh)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [arcsin](arcsin)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [arcsinh](arcsinh)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [arctan](arctan)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [arctanh](arctanh)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [argMax](argmax)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [argMin](argmin)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [argUnique](argunique)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [cbrt](cbrt)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [ceil](ceil)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [clip](clip)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [cos](cos)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [cosh](cosh)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [cot](cot)</strong>;</span>
</dt>
<dd>

 Calculate the cotangent of this expression.
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [count](count)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [degrees](degrees)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [dropNans](dropnans)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [dropNulls](dropnulls)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [exp](exp)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [floor](floor)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [isFinite](isfinite)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [isIn](isin)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [isNan](isnan)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [isNotNan](isnotnan)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [isNotNull](isnotnull)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [isNull](isnull)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [log1P](log1p)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [lowerBound](lowerbound)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [not](not)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [nullCount](nullcount)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [product](product)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [radians](radians)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [reverse](reverse)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [shrinkDtype](shrinkdtype)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [sin](sin)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [sinh](sinh)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [sqrt](sqrt)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [tan](tan)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [tanh](tanh)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [toPhysical](tophysical)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [unique](unique)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [uniqueStable](uniquestable)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [upperBound](upperbound)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [strExplode](strexplode)</strong>;</span>
</dt>
<dd>

 TODO: Docs for explode
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [strLenBytes](strlenbytes)</strong>;</span>
</dt>
<dd>

 TODO: Docs for len_bytes
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [strLenChars](strlenchars)</strong>;</span>
</dt>
<dd>

 TODO: Docs for len_chars
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [strToLowercase](strtolowercase)</strong>;</span>
</dt>
<dd>

 TODO: Docs for to_lowercase
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [strToUppercase](strtouppercase)</strong>;</span>
</dt>
<dd>

 TODO: Docs for to_uppercase
</dd>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[Expr] [<strong>all](all)</strong>({<span class="nobr">bool <i>ignoreNulls</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>any](any)</strong>({<span class="nobr">bool <i>ignoreNulls</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>append](append)</strong>({<span class="nobr"><strong>required</strong> [Expr] other</span>, <span class="nobr">bool <i>upcast</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>arctan2](arctan2)</strong>({<span class="nobr"><strong>required</strong> [Expr] x</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>argSort](argsort)</strong>({<span class="nobr">bool <i>descending</i></span>, <span class="nobr">bool <i>nullsLast</i></span>, <span class="nobr">bool <i>multithreaded</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>backwardFill](backwardfill)</strong>({<span class="nobr">int? <i>limit</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>clipMax](clipmax)</strong>({<span class="nobr"><strong>required</strong> [Expr] max</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>clipMin](clipmin)</strong>({<span class="nobr"><strong>required</strong> [Expr] min</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>cumCount](cumcount)</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>cumMax](cummax)</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>cumMin](cummin)</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>cumProd](cumprod)</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>cumSum](cumsum)</strong>({<span class="nobr">bool <i>reverse</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>div](div)</strong>({<span class="nobr"><strong>required</strong> [Expr] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>dot](dot)</strong>({<span class="nobr"><strong>required</strong> [Expr] other</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>entropy](entropy)</strong>({<span class="nobr"><strong>required</strong> double base</span>, <span class="nobr">bool <i>normalize</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>fillNan](fillnan)</strong>({<span class="nobr"><strong>required</strong> [Expr] value</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>fillNull](fillnull)</strong>({<span class="nobr"><strong>required</strong> [Expr] value</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>forwardFill](forwardfill)</strong>({<span class="nobr">int? <i>limit</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>log](log)</strong>({<span class="nobr"><strong>required</strong> double base</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>pow](pow)</strong>({<span class="nobr"><strong>required</strong> double exponent</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>reshape](reshape)</strong>({<span class="nobr"><strong>required</strong> [Int64List] dims</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>rollingMax](rollingmax)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_max
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>rollingMean](rollingmean)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_mean
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>rollingMedian](rollingmedian)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_median
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>rollingMin](rollingmin)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_min
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>rollingQuantile](rollingquantile)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_quantile
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>rollingStd](rollingstd)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_std
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>rollingSum](rollingsum)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_sum
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>rollingVar](rollingvar)</strong>({<span class="nobr">Duration? <i>windowSize</i></span>, <span class="nobr">int <i>minPeriods</i></span>, <span class="nobr">Float64List? <i>weights</i></span>, <span class="nobr">bool <i>center</i></span>, <span class="nobr">String? <i>by</i></span>, <span class="nobr">[ClosedWindow?] <i>closedWindow</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for rolling_var
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>round](round)</strong>({<span class="nobr"><strong>required</strong> int decimals</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>roundSigFigs](roundsigfigs)</strong>({<span class="nobr"><strong>required</strong> int digits</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>setSortedFlag](setsortedflag)</strong>({<span class="nobr"><strong>required</strong> [IsSorted] sorted</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>shift](shift)</strong>({<span class="nobr"><strong>required</strong> [Expr] n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>shiftAndFill](shiftandfill)</strong>({<span class="nobr"><strong>required</strong> [Expr] n</span>, <span class="nobr"><strong>required</strong> [Expr] fillValue</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">String [<strong>toDot](todot)</strong>({<span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 Returns a dot representation of this expression.
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>valueCounts](valuecounts)</strong>({<span class="nobr">bool <i>sort</i></span>, <span class="nobr">bool <i>parallel</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>strConcat](strconcat)</strong>({<span class="nobr"><strong>required</strong> String delimiter</span>, <span class="nobr">bool <i>ignoreNulls</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for concat
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strContains](strcontains)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for contains
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strContainsLiteral](strcontainsliteral)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for contains_literal
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strCountMatches](strcountmatches)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">bool <i>literal</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for count_matches
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strEndsWith](strendswith)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for ends_with
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strExtract](strextract)</strong>({<span class="nobr"><strong>required</strong> String pat</span>, <span class="nobr"><strong>required</strong> int groupIndex</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for extract
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strExtractAll](strextractall)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for extract_all
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strReplace](strreplace)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr"><strong>required</strong> [Expr] val</span>, <span class="nobr">bool <i>literal</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for replace
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strReplaceAll](strreplaceall)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr"><strong>required</strong> [Expr] val</span>, <span class="nobr">bool <i>literal</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for replace_all
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strReplaceN](strreplacen)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr"><strong>required</strong> [Expr] val</span>, <span class="nobr">bool <i>literal</i></span>, <span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for replace_n
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strSlice](strslice)</strong>({<span class="nobr"><strong>required</strong> int start</span>, <span class="nobr">int? <i>length</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for slice
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strSplit](strsplit)</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr">bool <i>inclusive</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>strSplitExact](strsplitexact)</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">bool <i>inclusive</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>strSplitn](strsplitn)</strong>({<span class="nobr"><strong>required</strong> [Expr] by</span>, <span class="nobr"><strong>required</strong> int n</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for splitn
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strStartsWith](strstartswith)</strong>({<span class="nobr"><strong>required</strong> [Expr] pat</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for starts_with
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strStripChars](strstripchars)</strong>({<span class="nobr"><strong>required</strong> [Expr] matches</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for strip_chars
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strStripCharsEnd](strstripcharsend)</strong>({<span class="nobr"><strong>required</strong> [Expr] matches</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for strip_chars_end
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strStripCharsStart](strstripcharsstart)</strong>({<span class="nobr"><strong>required</strong> [Expr] matches</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for strip_chars_start
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strStripPrefix](strstripprefix)</strong>({<span class="nobr"><strong>required</strong> [Expr] prefix</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for strip_prefix
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strStripSuffix](strstripsuffix)</strong>({<span class="nobr"><strong>required</strong> [Expr] suffix</span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for strip_suffix
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strToDate](strtodate)</strong>({<span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>strToDatetime](strtodatetime)</strong>({<span class="nobr">[TimeUnit?] <i>timeUnit</i></span>, <span class="nobr">String? <i>timeZone</i></span>, <span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>, <span class="nobr">[Ambiguous] <i>ambiguous</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>strToInteger](strtointeger)</strong>({<span class="nobr"><strong>required</strong> int base</span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 TODO: Docs for to_integer
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>strToTime](strtotime)</strong>({<span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>strptime](strptime)</strong>({<span class="nobr"><strong>required</strong> [DataType] dtype</span>, <span class="nobr">String? <i>format</i></span>, <span class="nobr">bool <i>strict</i></span>, <span class="nobr">bool <i>exact</i></span>, <span class="nobr">bool <i>cache</i></span>, <span class="nobr">[Ambiguous] <i>ambiguous</i></span>, <span class="nobr">dynamic <i>hint</i></span>});</span>
</dt>
<dd>

 - `dtype` A temporal data type, i.e. Date, DateTime, or Time.
</dd>
</dl>


## `ExprExt` extensions

### Properties
<dl>
<dt>

<span class="dart-code">[Expr] <strong>get [aggGroups](/reference/extensions/exprext/agggroups)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [explode](/reference/extensions/exprext/explode)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [flatten](/reference/extensions/exprext/flatten)</strong>;</span>
</dt>
<dd>

 Alias for [explode].
</dd>
<dt>

<span class="dart-code">[Expr] <strong>get [first](/reference/extensions/exprext/first)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [last](/reference/extensions/exprext/last)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [implode](/reference/extensions/exprext/implode)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [nUnique](/reference/extensions/exprext/nunique)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [nanMax](/reference/extensions/exprext/nanmax)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[Expr] <strong>get [nanMin](/reference/extensions/exprext/nanmin)</strong>;</span>
</dt>
<dt>

<span class="dart-code">[StrNamespace] <strong>get [str](/reference/extensions/exprext/str)</strong>;</span>
</dt>
</dl>

### Methods
<dl>
<dt>

<span class="dart-code">[Expr] [<strong>head](/reference/extensions/exprext/head)</strong>({<span class="nobr">int <i>length</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>tail](/reference/extensions/exprext/tail)</strong>({<span class="nobr">int <i>length</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>alias](/reference/extensions/exprext/alias)</strong>(<span class="nobr">String name</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>cast](/reference/extensions/exprext/cast)</strong>(<span class="nobr">[DataType] dataType</span>, {<span class="nobr">bool <i>strict</i></span>});</span>
</dt>
<dd>

 Attempt to [cast](https://docs.pola.rs/user-guide/expressions/casting) a column's [DataType] to a new one.
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>equalMissing](/reference/extensions/exprext/equalmissing)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>notEqualMissing](/reference/extensions/exprext/notequalmissing)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>exclude](/reference/extensions/exprext/exclude)</strong>(<span class="nobr">Iterable&lt;String&gt; columns</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>filter](/reference/extensions/exprext/filter)</strong>({<span class="nobr"><strong>required</strong> Object? by</span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>get](/reference/extensions/exprext/get)</strong>(<span class="nobr">Object? idx</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>gather](/reference/extensions/exprext/gather)</strong>(<span class="nobr">Object? idx</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>slice](/reference/extensions/exprext/slice)</strong>(<span class="nobr">int offset</span>, <span class="nobr">int length</span>);</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>sort](/reference/extensions/exprext/sort)</strong>({<span class="nobr">bool <i>descending</i></span>, <span class="nobr">bool <i>multithreaded</i></span>, <span class="nobr">bool <i>maintainOrder</i></span>, <span class="nobr">bool <i>nullsLast</i></span>});</span>
</dt>
<dt>

<span class="dart-code">[Expr] [<strong>std](/reference/extensions/exprext/std)</strong>(<span class="nobr">int ddof</span>);</span>
</dt>
<dd>

 Calculate the standard deviation of this expression with the specified
 [ddof] or [delta degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_(statistics)).
</dd>
</dl>

### Operators
<dl>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong><](/reference/extensions/exprext/op_lt)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is less than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong><=](/reference/extensions/exprext/op_le)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is no greater than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>>](/reference/extensions/exprext/op_gt)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is greater than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>>=](/reference/extensions/exprext/op_ge)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether this is no lesser than [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>+](/reference/extensions/exprext/op_add)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the sum of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>-](/reference/extensions/exprext/op_sub)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the difference of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>*](/reference/extensions/exprext/op_mul)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the product of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>/](/reference/extensions/exprext/op_div)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the division of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>~/](/reference/extensions/exprext/op_idiv)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression representing the integral division of this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>%](/reference/extensions/exprext/op_mod)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Performs a modulo operation on this and [other].
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>&](/reference/extensions/exprext/op_and)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether both this and [other] are true.
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>|](/reference/extensions/exprext/op_or)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether either this or [other] is true.
</dd>
<dt>

<span class="dart-code">[Expr] [<strong>operator</strong> <strong>^](/reference/extensions/exprext/op_xor)</strong>(<span class="nobr">Object? other</span>);</span>
</dt>
<dd>

 Returns an expression evaluating whether at most one of this and [other] is true,
 i.e. whether this and [other] are not equal.
</dd>
</dl>


## Inherited from `_$Expr`

[Expr]: /reference/classes/expr
[LiteralValue]: /reference/classes/literalvalue
[Operator]: /reference/enums/operator
[DataType]: /reference/classes/datatype
[SortOptions]: /reference/classes/sortoptions
[AggExpr]: /reference/classes/aggexpr
[WindowType]: /reference/classes/windowtype
[PExpr]: /reference/classes/pexpr
[Int64List]: /reference/classes/int64list
[ClosedWindow?]: /reference/enums/closedwindow
[IsSorted]: /reference/enums/issorted
[TimeUnit?]: /reference/enums/timeunit
[Ambiguous]: /reference/enums/ambiguous
[StrNamespace]: /reference/classes/strnamespace