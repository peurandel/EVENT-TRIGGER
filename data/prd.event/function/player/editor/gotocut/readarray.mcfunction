$execute store result score #prd.array.this prd.num as @e[tag=prd.entity.event,type=marker] if score @s prd.id = #prd.selecting prd.id run data get entity @s data.goto[$(num)]
#tellraw @a {"score":{"name": "#prd.array.this","objective": "prd.num"}}
$execute if score #prd.array.this prd.num = @e[tag=prd.entity.event.selected.this,limit=1,type=marker] prd.id as @e[tag=prd.entity.event,type=marker] if score @s prd.id = #prd.selecting prd.id run return run data remove entity @s data.goto[$(num)]
execute store result storage prd:this array.num int 1 run scoreboard players add #prd.array.num prd.num 1
execute unless score #prd.array.num prd.num > #prd.array prd.num run function prd.event:player/editor/gotocut/readarray with storage prd:this array