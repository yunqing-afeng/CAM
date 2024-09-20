execute as @a if score @s CAM_badrink matches 1.. run scoreboard players add @s CAM_badrink_tick 1
execute as @a if score @s CAM_badrink_tick matches 20.. run scoreboard players remove @s CAM_badrink 1
execute as @a if score @s CAM_badrink_tick matches 20.. run scoreboard players remove @s CAM_badrink_tick 20
execute as @a if score @s CAM_badrink matches 2500.. run function cam:village/wine/winedrink/addict