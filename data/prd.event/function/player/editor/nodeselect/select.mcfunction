scoreboard players set #prd.ray prd.num 0
function prd.event:player/editor/nodeselect/selectray

#만약 selected.this를 뽑으려면?
execute if score #prd.selecting prd.bool matches 1 run scoreboard players operation @s prd.selecting = @e[tag=prd.entity.event.selected.this] prd.id
scoreboard players set #prd.selecting prd.bool 0 
execute at @e[tag=prd.entity.event.selected.this,type=marker] run particle dust{color:[1,0,0],scale:2} ~ ~1.5 ~ 0 0 0 0 1 force @s

tag @e[tag=prd.entity.event.selected.this,type=marker] remove prd.entity.event.selected.this