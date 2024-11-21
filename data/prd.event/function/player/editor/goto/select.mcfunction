scoreboard players set #prd.ray prd.num 0
function prd.event:player/editor/goto/selectray

#만약 selected.this를 뽑으려면?
scoreboard players operation #prd.selecting prd.id = @s prd.selecting
function prd.event:player/editor/goto/showgoto
scoreboard players set #prd.selecting prd.bool 0 
execute at @e[tag=prd.entity.event.selected.this,type=marker] run particle dust{color:[0,0,1],scale:2} ~ ~1.5 ~ 0 0 0 0 1 force @s

tag @e[tag=prd.entity.event.selected.this,type=marker] remove prd.entity.event.selected.this