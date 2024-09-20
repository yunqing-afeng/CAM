execute store result score @s CAM_farmpos1 if block ~1 ~-1 ~ minecraft:farmland
execute if score @s CAM_farmpos1 matches 1.. run scoreboard players add @s CAM_farmpos2 1
execute store result score @s CAM_farmpos1 if block ~-1 ~-1 ~ minecraft:farmland
execute if score @s CAM_farmpos1 matches 1.. run scoreboard players add @s CAM_farmpos2 1
execute store result score @s CAM_farmpos1 if block ~ ~-1 ~1 minecraft:farmland
execute if score @s CAM_farmpos1 matches 1.. run scoreboard players add @s CAM_farmpos2 1
execute store result score @s CAM_farmpos1 if block ~ ~-1 ~-1 minecraft:farmland
execute if score @s CAM_farmpos1 matches 1.. run scoreboard players add @s CAM_farmpos2 1