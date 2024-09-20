scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
execute as @s[scores={random=4}] run function cam:villager/farmer/woodman/level1
tag @s add CAM_triggered