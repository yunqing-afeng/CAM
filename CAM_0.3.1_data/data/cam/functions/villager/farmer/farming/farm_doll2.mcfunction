function cam:villager/farmer/farming/farm_dool2-1
function cam:villager/farmer/farming/farm_dool2-2
function cam:villager/farmer/farming/farm_dool2-3
scoreboard players operation @s CAM_farmpossible *= @s CAM_farmposmulti

scoreboard players set #random_min random 1
scoreboard players set #random_max random 50000
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s CAM_farmpossible >= @s random run setblock ~ ~-1 ~ minecraft:farmland
execute if score @s CAM_farmpossible >= @s random run playsound minecraft:item.hoe.till neutral @a ~ ~ ~