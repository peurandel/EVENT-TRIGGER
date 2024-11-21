#$execute as @e[tag=prd.entity.event,scores={prd.id=$(goto0)},type=marker] run say hi
$tag @e[tag=prd.entity.event,scores={prd.id=$(goto0)},type=marker] add prd.entity.marker.goto.this
data remove storage prd:this goto0
data remove storage prd:this goto[0]
data modify storage prd:this goto0 set from storage prd:this goto[0]
execute unless data storage prd:this goto[0] run return 0
function prd.event:entity/goto with storage prd:this
