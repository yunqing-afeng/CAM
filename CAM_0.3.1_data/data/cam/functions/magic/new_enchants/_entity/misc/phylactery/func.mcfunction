#去除负面效果
execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:2}].Duration 0.05
effect clear @s minecraft:slowness
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:4}].Duration 0.05
effect clear @s minecraft:mining_fatigue
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:9}].Duration 0.05
effect clear @s minecraft:nausea

scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime
execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:15}].Duration 0.05
effect clear @s minecraft:blindness
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:17}].Duration 0.05
effect clear @s minecraft:hunger
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:18}].Duration 0.05
effect clear @s minecraft:weakness
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:19}].Duration 0.05
effect clear @s minecraft:poison
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:20}].Duration 0.05
effect clear @s minecraft:wither
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:27}].Duration 0.05
effect clear @s minecraft:unluck
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:31}].Duration 0.05
effect clear @s minecraft:bad_omen
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

execute store result score @s CAM_phytemptime run data get entity @s ActiveEffects[{Id:33}].Duration 0.05
effect clear @s minecraft:darkness
scoreboard players operation @s CAM_phytinytime += @s CAM_phytemptime

#粒子效果
execute if score @s CAM_phytinytime matches 1.. if score #particle CAM_module matches 1 run particle dust 0.318 0.847 0.302 .7 ~ ~1 ~ .5 .5 .5 1 10 normal
scoreboard players set @s CAM_phytinytime 0
