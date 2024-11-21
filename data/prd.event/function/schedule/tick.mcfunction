#schedule:{text:'',pause:(num)}

$execute unless data storage prd:db player.'$(id)'.schedule[0] run return 0
#pause
$execute store result score @s prd.pause run data get storage prd:db player.'$(id)'.schedule[0].pause
execute unless score @s prd.pause matches ..0 run scoreboard players remove @s prd.pause 1
$execute store result storage prd:db player.'$(id)'.schedule[0].pause int 1 run scoreboard players get @s prd.pause
execute unless score @s prd.pause matches ..0 run return 0

$tellraw @s [{"nbt":"player.'$(id)'.schedule[0].text","storage": "prd:db","interpret": true}]
$data remove storage prd:db player.'$(id)'.schedule[0]