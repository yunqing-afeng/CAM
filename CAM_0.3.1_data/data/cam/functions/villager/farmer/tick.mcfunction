scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @e[tag=!CAM_triggered1,type=minecraft:villager,predicate=cam:villager/trigger/farmer_4] random = #result random
execute as @e[tag=!CAM_triggered1,type=minecraft:villager,predicate=cam:villager/trigger/farmer_4,scores={random=1..50}] run function cam:villager/farmer/trigger1
execute as @e[tag=!CAM_triggered1,type=minecraft:villager,predicate=cam:villager/trigger/farmer_4] unless entity @s[scores={random=1..50}] run tag @s add CAM_triggered1
execute as @e[type= minecraft:villager,limit=1,predicate=cam:villager/trigger/farmer_5,tag=!winterday_triggered] run function cam:villager/farmer/trigger2
