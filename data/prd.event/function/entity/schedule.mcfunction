#소리 출력
execute unless data entity @e[tag=prd.this,limit=1,type=marker] data.sound run playsound minecraft:entity.evoker.prepare_summon ambient @s ~ ~ ~ 1 2
function prd.event:entity/sound with entity @e[tag=prd.this,limit=1,type=marker] data
#텍스트 출력

$data modify storage prd:db player.$(id).schedule set from storage prd:this schedule
$data modify entity @e[tag=prd.this,limit=1,type=marker] data.closedplayers append value $(id)
$data modify storage prd:db player.$(id).schedule set from storage prd:this schedule

#명령어 실행
function prd.event:cmd with entity @e[tag=prd.this,limit=1,type=marker] data

function prd.event:entity/setgoto with storage prd:this

#execute as @e[tag=prd.entity.marker.goto.this] run say it's goto marker
$execute as @e[tag=prd.entity.marker.goto.this] run data modify entity @s data.allowed append value $(id)
tag @e[tag=prd.entity.marker.goto.this,type=marker] remove prd.entity.marker.goto.this
