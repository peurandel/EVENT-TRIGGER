scoreboard players set #prd.ray prd.num 0
function prd.event:player/editor/gotocut/selectray

#만약 selected.this를 뽑으려면?
scoreboard players operation #prd.selecting prd.id = @s prd.selecting
execute as @e[tag=prd.entity.event,type=marker] if score @s prd.id = #prd.selecting prd.id run function prd.event:entity/setgoto with storage prd:this
    execute at @e[tag=prd.entity.marker.goto.this] run particle dust{color:[0,0,1],scale:1} ~ ~1.5 ~ 0 0 0 0 1 force @s
    execute store result score #prd.array prd.num run data get entity @e[tag=prd.entity.marker.goto.this,limit=1,type=marker] data.goto
    scoreboard players set #prd.array.num prd.num 0
    execute if score #prd.selecting prd.bool matches 1 run function prd.event:player/editor/gotocut/readarray {num:0}
    execute at @e[tag=prd.entity.event.selected.this,tag=prd.entity.marker.goto.this,type=marker] run particle dust{color:[1,0,1],scale:2} ~ ~1.5 ~ 0 0 0 0 1 force @s
    tag @e[tag=prd.entity.marker.goto.this,type=marker] remove prd.entity.marker.goto.this

scoreboard players set #prd.selecting prd.bool 0 

tag @e[tag=prd.entity.event.selected.this,type=marker] remove prd.entity.event.selected.this