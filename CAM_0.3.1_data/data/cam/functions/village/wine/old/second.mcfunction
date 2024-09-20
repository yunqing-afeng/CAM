execute if entity @s[tag=!CAM_tested] run function cam:village/wine/old/random
tag @s add CAM_tested

scoreboard players remove @s CAM_wine_timer 1
execute if score @s CAM_wine_timer matches ..0 run function cam:village/wine/old/wineget