$summon text_display ~ ~2 ~ {Tags:[prd.entity.text],text:'{"text":"$(id)"}'}

execute unless data entity @s data.goto run return 0
    function prd.event:entity/setgoto with storage prd:this
    execute at @s as @e[tag=prd.entity.marker.goto.this] facing entity @s feet run particle minecraft:flame ~ ~ ~ ^ ^ ^50000000000000000 0.00000000000000001 0 force @a
    tag @e[tag=prd.entity.marker.goto.this,type=marker] remove prd.entity.marker.goto.this
