advancement revoke @s only prd.event:controller_right_click
item replace entity @s weapon.mainhand with string[custom_data={prd.event.editor:1},custom_name='{"text":"[PRD] EVENT EDITOR"}',minecraft:consumable={consume_seconds:0,animation:none}] 1

# MODES : SELECT, GOTO, GOTO CUT, REMOVE, MOVE,
execute if predicate prd.event:sneak run scoreboard players add @s prd.mode 1
scoreboard players set @s[scores={prd.mode=5..}] prd.mode 0


execute as @s[scores={prd.mode=0}] unless predicate prd.event:sneak run function prd.event:player/editor/nodeselect/main
execute as @s[scores={prd.mode=1}] unless predicate prd.event:sneak run function prd.event:player/editor/goto/main
execute as @s[scores={prd.mode=2}] unless predicate prd.event:sneak run function prd.event:player/editor/gotocut/main