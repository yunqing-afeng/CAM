loot spawn ~ ~ ~ loot cam:villager/weapon
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_sword"}},limit=1] run function cam:villager/weaponsmith/weaponsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_sword"}},limit=1] run function cam:villager/weaponsmith/weaponsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_sword"}},limit=1] run function cam:villager/weaponsmith/weaponsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_sword"}},limit=1] run function cam:villager/weaponsmith/weaponsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_axe"}},limit=1] run function cam:villager/weaponsmith/weaponsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_axe"}},limit=1] run function cam:villager/weaponsmith/weaponsmith/itemdeal

data modify storage cam:villager weaponsmith.A[0].sell set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp1,limit=1] Item
data modify storage cam:villager weaponsmith.A[0].buy set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp2,limit=1] Item
kill @e[tag=CAM_temp1]
kill @e[tag=CAM_temp2]