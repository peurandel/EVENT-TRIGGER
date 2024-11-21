#$execute as @a[scores={prd.id=$(player0)}] run say it's allowedplayer
$tag @a[scores={prd.id=$(player0)}] add prd.marker.player.this
data remove storage prd:this player0
data remove storage prd:this players[0]
execute unless data storage prd:this players[0] run return run data modify storage prd:this player0 set from storage prd:this players[0]
function prd.event:entity/allowplayer with storage prd:this






