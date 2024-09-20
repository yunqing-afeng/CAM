scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
execute as @s[scores={random=1}] run loot replace entity @s weapon.mainhand loot cam:cam/harpoon
execute as @s[scores={random=17..20}] run loot replace entity @s weapon.mainhand loot cam:misc/cps
tag @s add CAM_triggered 
