data modify entity @s Offers.Recipes append value {maxUses:12,uses:0,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:stone",Count:1b}} 
loot spawn ~ ~ ~ loot cam:villager/wander/special
tag @e[limit=1,sort=nearest,nbt={Item:{tag:{CAM_wander:1b}}}] add CAM_wan_item
data modify entity @e[limit=1,sort=nearest,tag=CAM_wan_item] PickupDelay set value 32767
data modify entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Age set value -32768

execute store result entity @s Offers.Recipes[-1].maxUses int 1 run data get entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item.tag.CAM_wander_c
execute store result entity @s Offers.Recipes[-1].buy.Count byte 1 run data get entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item.tag.CAM_wander_p

execute as @e[tag=CAM_wan_item] run data remove entity @s Item.tag.CAM_wander_p
execute as @e[tag=CAM_wan_item] run data remove entity @s Item.tag.CAM_wander
execute as @e[tag=CAM_wan_item] run data remove entity @s Item.tag.CAM_wander_c

data modify entity @s Offers.Recipes[-1].sell set from entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item
kill @e[tag=CAM_wan_item]