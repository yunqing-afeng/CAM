scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 1..45 run scoreboard players operation @s CAM_barreldeg += #temp CAM_barreldeg
execute if data block ~ 319 ~ Items[{Slot:0b,tag:{CAM_if_rough:1b}}] run function cam:machine/barrel/execute/operation5
