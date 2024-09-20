scoreboard players set #random_min random 800
scoreboard players set #random_max random 1200
function cam:random/random
scoreboard players operation @s CAM_alcohol_deg = #result random

scoreboard players set #random_min random 4
scoreboard players set #random_max random 6
function cam:random/random
scoreboard players operation @s CAM_intensity = #result random


execute store result entity @s Item.tag.CAM_alcohol int 1 run scoreboard players get @s CAM_alcohol_deg
execute store result entity @s Item.tag.CAM_alcohol int 1 run scoreboard players get @s CAM_alcohol_deg
