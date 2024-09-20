execute if score @s CAM_catcher_timer matches ..0 run function cam:cm/dream_catcher/particle/random_

scoreboard players remove @s CAM_catcher_timer 1

execute if score @s CAM_catcher_facing matches 2 at @s positioned ~ ~.2 ~ run function cam:cm/dream_catcher/particle/3/north
execute if score @s CAM_catcher_facing matches 3 at @s positioned ~ ~.2 ~ run function cam:cm/dream_catcher/particle/3/south
execute if score @s CAM_catcher_facing matches 4 at @s positioned ~ ~.2 ~ run function cam:cm/dream_catcher/particle/3/west
execute if score @s CAM_catcher_facing matches 5 at @s positioned ~ ~.2 ~ run function cam:cm/dream_catcher/particle/3/east

execute if score @s CAM_catcher_facing matches 0 at @s positioned ~ ~-0.25 ~ run function cam:cm/dream_catcher/particle/top