#allowed player
function prd.event:entity/setallowedplayer
#closed player
function prd.event:entity/setdeniedplayer

execute unless data entity @s data.particle run particle end_rod ~ ~.5 ~ 0 0 0 0 1 force @a[tag=prd.marker.player.this,tag=!prd.marker.player.denied.this]
execute if data entity @s data.particle run function prd.event:entity/particle with entity @s data

execute as @a[tag=prd.marker.player.this,tag=!prd.marker.player.denied.this,distance=..0.4,predicate=prd.event:sneak] at @s run function prd.event:entity/player


tag @a[tag=prd.marker.player.denied.this] remove prd.marker.player.denied.this
tag @a[tag=prd.marker.player.this] remove prd.marker.player.this

tag @s remove prd.this