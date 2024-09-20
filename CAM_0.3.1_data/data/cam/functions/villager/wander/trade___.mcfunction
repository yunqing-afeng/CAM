scoreboard players remove @s CAM_wan_tcount 1
data modify entity @s Offers.Recipes append value {maxUses:12,uses:0,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:stone",Count:1b}} 
data modify storage cam:villager wander_recent append from entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item

execute store result entity @s Offers.Recipes[-1].maxUses int 1 run data get entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item.tag.CAM_wander_c
execute store result entity @s Offers.Recipes[-1].buy.Count byte 1 run data get entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item.tag.CAM_wander_p



execute as @e[tag=CAM_wan_item] run data remove entity @s Item.tag.CAM_wander_p
execute as @e[tag=CAM_wan_item] run data remove entity @s Item.tag.CAM_wander
execute as @e[tag=CAM_wan_item] run data remove entity @s Item.tag.CAM_wander_c

data modify entity @s Offers.Recipes[-1].sell set from entity @e[limit=1,sort=nearest,tag=CAM_wan_item] Item
