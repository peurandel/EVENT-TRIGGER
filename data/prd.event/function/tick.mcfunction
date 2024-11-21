execute as @a at @s run function prd.event:player/main
execute as @e[tag=prd.entity.event,type=marker] at @s run function prd.event:entity/marker
execute as @e[tag=prd.entity.text] run function prd.event:entity/optext