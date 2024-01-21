---
title: "AggExpr"
description: |

---


### Constructors
<dl>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[min](min)</strong>({<span class="nobr"><strong>required</strong> [Expr] input</span>, <span class="nobr"><strong>required</strong> [bool] propagateNans</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[max](max)</strong>({<span class="nobr"><strong>required</strong> [Expr] input</span>, <span class="nobr"><strong>required</strong> [bool] propagateNans</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[median](median)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[nUnique](nunique)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[first](first)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[last](last)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[mean](mean)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[implode](implode)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[count](count)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[quantile](quantile)</strong>({<span class="nobr"><strong>required</strong> [Expr] expr</span>, <span class="nobr"><strong>required</strong> [Expr] quantile</span>, <span class="nobr"><strong>required</strong> [QuantileInterpolOptions] interpol</span>});</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[sum](sum)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[aggGroups](agggroups)</strong>(<span class="nobr">[Expr] field0</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[std](std)</strong>(<span class="nobr">[Expr] field0</span>, <span class="nobr">[int] field1</span>);</span>
</dt>
<dt>

<span class="dart-code"><strong>const factory AggExpr.[Var](var)</strong>(<span class="nobr">[Expr] field0</span>, <span class="nobr">[int] field1</span>);</span>
</dt>
</dl>



## Inherited from `_$AggExpr`

[Expr]: /reference/classes/expr/
[bool]: https://api.flutter.dev/flutter/dart-core/bool-class.html
[QuantileInterpolOptions]: /reference/enums/quantileinterpoloptions/
[int]: https://api.flutter.dev/flutter/dart-core/int-class.html