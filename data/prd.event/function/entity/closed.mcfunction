#allowed player
function prd.event:entity/setallowedplayer
#closed player
function prd.event:entity/setdeniedplayer

execute unless data entity @s data.particle run particle end_rod ~ ~.5 ~ 0 0 0 0 1 force @a[tag=prd.marker.player.this,tag=!prd.marker.player.denied.this]
execute if data entity @s data.particle run function prd.event:entity/particle with entity @s data


#player
tag @a[tag=prd.marker.player.this,tag=!prd.marker.player.denied.this,distance=..0.4,predicate=prd.event:sneak,limit=1] add prd.player.trigger.this
execute store result storage prd:this id int 1 run scoreboard players get @a[tag=prd.player.trigger.this,limit=1] prd.id
execute if entity @a[tag=prd.player.trigger.this] run function prd.event:entity/schedule with storage prd:this

tag @a[tag=prd.player.trigger.this] remove prd.player.trigger.this
tag @a[tag=prd.marker.player.denied.this] remove prd.marker.player.denied.this
tag @a[tag=prd.marker.player.this] remove prd.marker.player.this

tag @s remove prd.this