execute as @e[tag=prd.entity.event,type=marker] if score @s prd.id = #prd.selecting prd.id run function prd.event:entity/setgoto with storage prd:this
execute as @e[tag=prd.entity.marker.goto.this] at @s run particle dust{color:[0,0,1],scale:1} ~ ~1.5 ~ 0 0 0 0 1 force @a[tag=prd.player.this]

execute if score #prd.selecting prd.bool matches 1 if entity @e[tag=!prd.entity.marker.goto.this,tag=prd.entity.event.selected.this,limit=1,type=marker] store result storage prd:this marker.id int 1 run scoreboard players get @e[tag=!prd.entity.marker.goto.this,tag=prd.entity.event.selected.this,limit=1,type=marker] prd.id
execute if score #prd.selecting prd.bool matches 1 as @e[tag=prd.entity.event,type=marker] if score @s prd.id = #prd.selecting prd.id run data modify entity @s data.goto append from storage prd:this marker.id

tag @e[tag=prd.entity.marker.goto.this,type=marker] remove prd.entity.marker.goto.this
