advancement revoke @s only prd.event:controller_right_click

# MODES : SELECT, GOTO, GOTO CUT, REMOVE, MOVE,
execute if predicate prd.event:sneak run scoreboard players add @s prd.mode 1
scoreboard players set @s[scores={prd.mode=5..}] prd.mode 0


execute as @s[scores={prd.mode=0}] run function prd.event:player/editor/nodeselect/main