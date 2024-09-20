execute at @s as @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}},distance=..2] run data modify entity @s Item.tag set from storage cam:village rice.tag
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds",tag:{CAM_rice:1b}}}] add CAM_rice
execute at @s if entity @e[type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..2] run loot spawn ~ ~ ~ loot cam:cam/rice
kill @e[type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..2,sort=nearest,limit=1]

kill @s