tag @s add CAM_temp1
data modify entity @s PickupDelay set value 1000
loot spawn ~ ~ ~ loot cam:villager/craftsman/emerald_lantern
execute as @e[type=minecraft:item,distance=..1,tag=!CAM_temp1,limit=1,sort=nearest] run tag @s add CAM_temp2
execute as @e[type=minecraft:item,distance=..1,tag=CAM_temp2] run data modify entity @s PickupDelay set value 1000