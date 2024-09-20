tag @s add CAM_temp1
data modify entity @s PickupDelay set value 1000
function cam:villager/fletcher/hunter/exhaustion
loot spawn ~ ~ ~ loot cam:villager/hunter/emerald
execute as @e[type=minecraft:item,distance=..1,tag=!CAM_temp1,limit=1] run tag @s add CAM_temp2
execute as @e[type=minecraft:item,distance=..1,tag=!CAM_temp1,limit=1] run data modify entity @s PickupDelay set value 1000