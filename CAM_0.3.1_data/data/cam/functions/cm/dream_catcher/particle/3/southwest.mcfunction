execute unless score @s CAM_catcher_functimer matches 1.. if score @s CAM_catcher_random matches 0 run function cam:cm/dream_catcher/particle/southwest
execute unless score @s CAM_catcher_functimer matches 1.. if score @s CAM_catcher_random matches 1 run function cam:cm/dream_catcher/particle/south
execute unless score @s CAM_catcher_functimer matches 1.. if score @s CAM_catcher_random matches 2 run function cam:cm/dream_catcher/particle/west

execute if score @s CAM_catcher_functimer matches 1.. run particle minecraft:portal ~ ~ ~ 0 0 0 .3 1