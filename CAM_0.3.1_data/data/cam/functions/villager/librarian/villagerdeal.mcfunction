loot spawn ~ ~ ~ loot cam:villager/book
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book"}},limit=1] run function cam:villager/librarian/itemdeal
execute as @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:written_book"}},limit=1] run function cam:villager/librarian/itemdeal
data modify storage cam:villager librarian.A[0].sell set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp1,limit=1] Item
data modify storage cam:villager librarian.A[0].buy set from entity @e[type=minecraft:item,sort=nearest,tag=CAM_temp2,limit=1] Item
kill @e[tag=CAM_temp1]
kill @e[tag=CAM_temp2]