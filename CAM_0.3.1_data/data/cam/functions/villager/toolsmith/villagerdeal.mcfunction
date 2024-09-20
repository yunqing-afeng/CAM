loot spawn ~ ~ ~ loot cam:villager/tool

execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_axe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_shovel"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_pickaxe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_hoe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_axe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_shovel"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_pickaxe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:iron_hoe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_axe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_shovel"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_pickaxe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:diamond_hoe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_axe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_shovel"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_pickaxe"}},limit=1] run function cam:villager/toolsmith/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:golden_hoe"}},limit=1] run function cam:villager/toolsmith/itemdeal




data modify storage cam:villager toolsmith.A[0].sell set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp1,limit=1] Item
data modify storage cam:villager toolsmith.A[0].buy set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp2,limit=1] Item
kill @e[tag=CAM_temp1]
kill @e[tag=CAM_temp2]