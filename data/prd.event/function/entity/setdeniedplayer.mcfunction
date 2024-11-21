data remove storage prd:this player0
data modify storage prd:this players set from entity @s data.closedplayers
data modify storage prd:this player0 set from storage prd:this players[0]
execute if data storage prd:this player0 run function prd.event:entity/deniedplayer with storage prd:this