data modify storage prd:this goto set from entity @s data.goto
data modify storage prd:this goto0 set from storage prd:this goto[0]
execute if data storage prd:this goto0 run function prd.event:entity/goto with storage prd:this