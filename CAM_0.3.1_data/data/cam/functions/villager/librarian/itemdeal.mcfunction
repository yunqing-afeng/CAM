tag @s add CAM_temp1
data modify entity @s PickupDelay set value 1000
data modify storage cam:villager temp set from entity @s Item.tag.StoredEnchantments[0]
data remove entity @s Item.tag.StoredEnchantments[]
data modify entity @s Item.tag.StoredEnchantments append from storage cam:villager temp
execute store result score @s CAM_booklvl run data get entity @s Item.tag.StoredEnchantments[0].lvl
loot spawn ~ ~ ~ loot cam:villager/emerald_lib
execute as @e[type=minecraft:item,distance=..1,tag=!CAM_temp1,limit=1] run tag @s add CAM_temp2
execute as @e[type=minecraft:item,distance=..1,tag=!CAM_temp1,limit=1] run data modify entity @s PickupDelay set value 1000
execute if data entity @s Item.tag.StoredEnchantments[{id:"minecraft:mending"}] as @e[type=item,distance=..1,tag=CAM_temp2] run function cam:villager/librarian/multi
execute if data entity @s Item.tag.StoredEnchantments[{id:"minecraft:frost_walker"}] as @e[type=item,distance=..1,tag=CAM_temp2] run function cam:villager/librarian/multi