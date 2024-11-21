execute store result score @s prd.id run scoreboard players add #max.id prd.id 1
execute store result storage prd:this id int 1 run scoreboard players get #max.id prd.id
function prd.event:player/init2 with storage prd:this