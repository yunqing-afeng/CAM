execute store success score @s CAM_farmsuc run clone ~-4 ~-1 ~-4 ~4 ~-1 ~4 ~-4 255 ~-4 filtered water force
execute if score @s CAM_farmsuc matches 1.. run function cam:villager/farmer/farming/farm_doll2
fill ~-4 255 ~-4 ~4 255 ~4 air
scoreboard players reset @s CAM_farmsuc
scoreboard players reset @s CAM_farmpossible