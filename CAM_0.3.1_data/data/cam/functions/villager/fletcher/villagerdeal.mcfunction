loot spawn ~ ~ ~ loot cam:villager/bow

execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:bow"}},limit=1] run function cam:villager/fletcher/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:crossbow"}},limit=1] run function cam:villager/fletcher/itemdeal




data modify storage cam:villager fletcher.A[0].sell set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp1,limit=1] Item
data modify storage cam:villager fletcher.A[0].buy set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp2,limit=1] Item
kill @e[tag=CAM_temp1]
kill @e[tag=CAM_temp2]