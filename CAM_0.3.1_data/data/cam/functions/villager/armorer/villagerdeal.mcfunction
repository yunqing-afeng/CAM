loot spawn ~ ~ ~ loot cam:villager/armor

execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_leggings"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_boots"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_chestplate"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_helmet"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:chainmail_leggings"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:chainmail_boots"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:chainmail_chestplate"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:chainmail_helmet"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_leggings"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_boots"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_chestplate"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_helmet"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_leggings"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_helmet"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_chestplate"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_boots"}},limit=1] run function cam:villager/armorer/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:shield"}},limit=1] run function cam:villager/armorer/itemdeal


data modify storage cam:villager armorer.A[0].sell set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp1,limit=1] Item
data modify storage cam:villager armorer.A[0].buy set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp2,limit=1] Item
kill @e[tag=CAM_temp1]
kill @e[tag=CAM_temp2]