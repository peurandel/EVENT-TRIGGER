execute as @e[tag=prd.entity.event,limit=1,distance=..1,type=marker] run return run tag @s add prd.entity.event.selected.this
scoreboard players add #prd.ray prd.num 1
execute if score #prd.ray prd.num matches ..60 positioned ^ ^ ^0.2 run function prd.event:player/editor/goto/selectray