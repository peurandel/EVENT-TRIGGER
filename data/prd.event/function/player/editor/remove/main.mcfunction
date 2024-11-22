execute unless score @s prd.selecting = @s prd.selecting run tellraw @s "아직 노드를 설정하지 않으셨습니다! 설정해보세요!"
scoreboard players operation .global prd.id = @s prd.selecting
execute as @e[tag=prd.entity.event,type=marker] if score @s prd.id = .global prd.id at @s run particle explosion ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a
execute as @e[tag=prd.entity.event,type=marker] if score @s prd.id = .global prd.id run kill @s

