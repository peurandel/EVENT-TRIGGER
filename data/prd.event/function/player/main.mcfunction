tag @s add prd.player.this
execute unless score @s prd.id = @s prd.id run function prd.event:player/init

#get id
execute store result storage prd:this id int 1 run scoreboard players get @s prd.id
#read script
function prd.event:schedule/tick with storage prd:this

execute if items entity @s weapon.mainhand *[custom_data~{prd.event.editor:1}] run function prd.event:player/editor/main
tag @s remove prd.player.this