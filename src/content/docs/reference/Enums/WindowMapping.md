---
title: "WindowMapping"
description: |
  
---


### Values

<dl>
<dt><span class="dart-code">groupsToRows</span></dt>
<dd>
  
 Map the group vlues to the position
</dd>
<dt><span class="dart-code">explode</span></dt>
<dd>
  
 Explode the aggregated list and just do a hstack instead of a join
 this requires the groups to be sorted to make any sense
</dd>
<dt><span class="dart-code">join</span></dt>
<dd>
  
 Join the groups as 'List<group_dtype>' to the row positions.
 warning: this can be memory intensive
</dd>
</dl>


### Properties
<dl>
<dt>

<span class="dart-code">List\<WindowMapping> <strong>get [values](values)</strong>;</span>
</dt>
</dl>
