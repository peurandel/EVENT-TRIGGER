
function prd.event:player/editor/actionbar

#Particle Selecting Marker
scoreboard players operation .global prd.id = @s prd.selecting
execute as @e[tag=prd.entity.event,type=marker] if score @s prd.id = .global prd.id at @s run particle dust{color:[1,0,0],scale:1} ~ ~1.5 ~ 0 0 0 0 1 force @a[tag=prd.player.this]

#Show it
execute as @s[scores={prd.mode=0}] run function prd.event:player/editor/nodeselect/select
execute as @s[scores={prd.mode=1}] run function prd.event:player/editor/goto/select
execute as @s[scores={prd.mode=2}] run function prd.event:player/editor/gotocut/select
