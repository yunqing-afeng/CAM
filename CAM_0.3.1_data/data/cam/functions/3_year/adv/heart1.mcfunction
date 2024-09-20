execute unless score @s CAM_3_heart matches 1 run function cam:3_year/give/3_year_heart
execute unless score @s CAM_3_heart matches 1 run give @s candle
advancement grant @s only cam:3_year/harpoon heart
playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 1 1
scoreboard players set @s CAM_3_heart 1