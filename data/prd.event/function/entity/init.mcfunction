execute unless score @s prd.id = @s prd.id store result score @s prd.id run scoreboard players add #max.marker.id prd.id 1

execute store result storage prd:this marker.id int 1 run scoreboard players get @s prd.id