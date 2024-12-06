#기본 설정
function prd.event:entity/init
#관리자 모드
execute if score #prd.event.op prd.bool matches 1 run function prd.event:entity/showtext with storage prd:this marker
#스케줄 초기화 및 정리
data remove storage prd:this schedule
data modify storage prd:this schedule set from entity @s data.schedule
data modify storage prd:this goto set from entity @s data.goto
tag @s add prd.this
execute if data entity @s {data:{closed:1b}} run return run function prd.event:entity/closed

function prd.event:entity/setdeniedplayer
#tellraw @a[tag=prd.marker.player.denied.this] {"text":"test"}

#particles
execute unless data entity @s data.particle run particle end_rod ~ ~.5 ~ 0 0 0 0 1 force @a[tag=!prd.marker.player.denied.this]
execute if data entity @s data.particle run function prd.event:entity/particle with entity @s data

#players
tag @a[tag=!prd.marker.player.denied.this,distance=..0.4,predicate=prd.event:sneak,limit=1] add prd.player.trigger.this
execute store result storage prd:this id int 1 run scoreboard players get @a[tag=prd.player.trigger.this,limit=1] prd.id
execute if entity @a[tag=prd.player.trigger.this] run function prd.event:entity/schedule with storage prd:this

tag @a[tag=prd.player.trigger.this] remove prd.player.trigger.this
tag @a[tag=prd.marker.player.denied.this] remove prd.marker.player.denied.this
tag @s remove prd.this