execute store result score @s CAM_booklvl run data get entity @s Item.Count
scoreboard players operation @s CAM_booklvl *= $multi CAM_booklvl
execute if score @s CAM_booklvl matches 65.. run scoreboard players set @s CAM_booklvl 64
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CAM_booklvl