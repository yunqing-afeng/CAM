loot spawn ~ ~ ~ loot cam:villager/craftsman/dream_catcher
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:item_frame"}},limit=1] run function cam:villager/fisherman/craftsman/itemdeal/itemdeal_catcher

data modify storage cam:villager craftsman.A[0].sell set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp1,limit=1] Item
data modify storage cam:villager craftsman.A[0].buy set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp2,limit=1] Item
data modify storage cam:villager craftsman.A[0].uses set value 2
kill @e[tag=CAM_temp1]
kill @e[tag=CAM_temp2]