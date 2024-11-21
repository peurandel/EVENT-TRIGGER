data modify storage prd:this players set from entity @s data.allowed
data modify storage prd:this player0 set from storage prd:this players[0]
execute if data storage prd:this player0 run function prd.event:entity/allowplayer with storage prd:this