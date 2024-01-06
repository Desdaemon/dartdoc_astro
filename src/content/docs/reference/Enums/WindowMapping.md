---
title: "WindowMapping"
description: |
  
---


### Values

<dl>
  <dt><code>groupsToRows</code></dt>
  <dd>
  
 Map the group vlues to the position
  </dd>
  <dt><code>explode</code></dt>
  <dd>
  
 Explode the aggregated list and just do a hstack instead of a join
 this requires the groups to be sorted to make any sense
  </dd>
  <dt><code>join</code></dt>
  <dd>
  
 Join the groups as 'List<group_dtype>' to the row positions.
 warning: this can be memory intensive
  </dd>
</dl>

### Properties
#### `values`
<code>List\<WindowMapping> get values;</code>


