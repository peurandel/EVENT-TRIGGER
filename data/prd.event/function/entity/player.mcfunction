tag @s add prd.player.this
# get id
execute store result storage prd:this id int 1 run scoreboard players get @s prd.id

function prd.event:entity/schedule with storage prd:this

tag @s remove prd.player.this