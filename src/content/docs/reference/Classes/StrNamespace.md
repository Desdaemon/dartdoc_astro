---
title: "StrNamespace"
description: |
   Sugar for `Expr.str*` methods.
---
 Sugar for `Expr.str*` methods.

 See [Strings](https://docs.pola.rs/user-guide/expressions/strings) for more details.

 Many functions in this namespace accept a `pat` parameter, which is parsed
 as a regular expression except when the parameter `literal` is set to `true`.

### Fields
#### `expr`
<code>final [Expr] expr;</code>


### Properties
#### `toLowercase`
<code>[Expr] get toLowercase;</code>


#### `toUppercase`
<code>[Expr] get toUppercase;</code>


#### `lenBytes`
<code>[Expr] get lenBytes;</code>


#### `lenChars`
<code>[Expr] get lenChars;</code>


#### `explode`
<code>[Expr] get explode;</code>


### Constructors
#### `.new`
<code><strong>const StrNamespace</strong>(expr);</code>


Parameter|Type|Default|
-|-|-|
`expr`|<code>[Expr]</code>||
### Methods
#### `containsLiteral`
<code><strong>[Expr] containsLiteral</strong>(pat);</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
#### `contains`
<code><strong>[Expr] contains</strong>(pat, {<i>strict</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
`strict`|<code>bool</code>|`true`|
#### `endsWith`
<code><strong>[Expr] endsWith</strong>(pat);</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
#### `extract`
<code><strong>[Expr] extract</strong>(pat, {<strong>required</strong> groupIndex});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>String</code>||
`groupIndex`|<code>int</code>||
#### `extractAll`
<code><strong>[Expr] extractAll</strong>(pat);</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
#### `countMatches`
<code><strong>[Expr] countMatches</strong>(pat, {<i>literal</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
`literal`|<code>bool</code>|`false`|
#### `concat`
<code><strong>[Expr] concat</strong>(delimiter, {<i>ignoreNulls</i>});</code>


Parameter|Type|Default|
-|-|-|
`delimiter`|<code>String</code>||
`ignoreNulls`|<code>bool</code>|`true`|
#### `splitN`
<code><strong>[Expr] splitN</strong>({<strong>required</strong> by, <strong>required</strong> n});</code>


Parameter|Type|Default|
-|-|-|
`by`|<code>[Expr]</code>||
`n`|<code>int</code>||
#### `replace`
<code><strong>[Expr] replace</strong>(pat, val, {<i>literal</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
`val`|<code>Object?</code>||
`literal`|<code>bool</code>|`false`|
#### `replaceN`
<code><strong>[Expr] replaceN</strong>(pat, val, {<strong>required</strong> n, <i>literal</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
`val`|<code>Object?</code>||
`n`|<code>int</code>||
`literal`|<code>bool</code>|`false`|
#### `replaceAll`
<code><strong>[Expr] replaceAll</strong>(pat, val, {<i>literal</i>});</code>


Parameter|Type|Default|
-|-|-|
`pat`|<code>Object?</code>||
`val`|<code>Object?</code>||
`literal`|<code>bool</code>|`false`|
#### `stripChars`
<code><strong>[Expr] stripChars</strong>(matches);</code>


Parameter|Type|Default|
-|-|-|
`matches`|<code>Object?</code>||
#### `stripCharsStart`
<code><strong>[Expr] stripCharsStart</strong>(matches);</code>


Parameter|Type|Default|
-|-|-|
`matches`|<code>Object?</code>||
#### `stripCharsEnd`
<code><strong>[Expr] stripCharsEnd</strong>(matches);</code>


Parameter|Type|Default|
-|-|-|
`matches`|<code>Object?</code>||
#### `stripPrefix`
<code><strong>[Expr] stripPrefix</strong>(prefix);</code>


Parameter|Type|Default|
-|-|-|
`prefix`|<code>Object?</code>||
#### `stripSuffix`
<code><strong>[Expr] stripSuffix</strong>(suffix);</code>


Parameter|Type|Default|
-|-|-|
`suffix`|<code>Object?</code>||
#### `toInteger`
<code><strong>[Expr] toInteger</strong>({<strong>required</strong> base, <i>strict</i>});</code>


Parameter|Type|Default|
-|-|-|
`base`|<code>int</code>||
`strict`|<code>bool</code>|`true`|
#### `slice`
<code><strong>[Expr] slice</strong>(start, length);</code>


Parameter|Type|Default|
-|-|-|
`start`|<code>int</code>||
`length`|<code>int?</code>||
#### `strptime`
<code><strong>[Expr] strptime</strong>(dtype, {<i>format</i>, <i>strict</i>, <i>exact</i>, <i>cache</i>, <i>ambiguous</i>});</code>


Parameter|Type|Default|
-|-|-|
`dtype`|<code>[DataType]</code>||
`format`|<code>String?</code>||
`strict`|<code>bool</code>|`true`|
`exact`|<code>bool</code>|`true`|
`cache`|<code>bool</code>|`true`|
`ambiguous`|<code>[Ambiguous]</code>|`Ambiguous.raise`|
#### `toDate`
<code><strong>[Expr] toDate</strong>({<i>format</i>, <i>strict</i>, <i>exact</i>, <i>cache</i>});</code>


Parameter|Type|Default|
-|-|-|
`format`|<code>String?</code>||
`strict`|<code>bool</code>|`true`|
`exact`|<code>bool</code>|`true`|
`cache`|<code>bool</code>|`true`|
#### `toDatetime`
<code><strong>[Expr] toDatetime</strong>({<i>format</i>, <i>timeUnit</i>, <i>timeZone</i>});</code>


Parameter|Type|Default|
-|-|-|
`format`|<code>String?</code>||
`timeUnit`|<code>[TimeUnit?]</code>||
`timeZone`|<code>String?</code>||
#### `toTime`
<code><strong>[Expr] toTime</strong>({<i>format</i>, <i>strict</i>, <i>exact</i>, <i>cache</i>});</code>


Parameter|Type|Default|
-|-|-|
`format`|<code>String?</code>||
`strict`|<code>bool</code>|`true`|
`exact`|<code>bool</code>|`true`|
`cache`|<code>bool</code>|`true`|
#### `split`
<code><strong>[Expr] split</strong>({<strong>required</strong> by, <i>inclusive</i>});</code>


Parameter|Type|Default|
-|-|-|
`by`|<code>Object?</code>||
`inclusive`|<code>bool</code>|`false`|
#### `splitExact`
<code><strong>[Expr] splitExact</strong>({<strong>required</strong> by, <strong>required</strong> n, <i>inclusive</i>});</code>


Parameter|Type|Default|
-|-|-|
`by`|<code>Object?</code>||
`n`|<code>int</code>||
`inclusive`|<code>bool</code>|`false`|


[Expr]: /reference/classes/expr
[DataType]: /reference/classes/datatype
[Ambiguous]: /reference/enums/ambiguous
[TimeUnit?]: /reference/enums/timeunit