execute store result score @s CAM_fish run data get block ~ ~ ~ CookingTimes[0]
execute if data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:cod",tag:{id:"cam:fish"}}]} if score @s CAM_fish matches 599 run tag @s add CAM_fish

execute store result score @s CAM_fish run data get block ~ ~ ~ CookingTimes[1]
execute if data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:cod",tag:{id:"cam:fish"}}]} if score @s CAM_fish matches 599 run tag @s add CAM_fish

execute store result score @s CAM_fish run data get block ~ ~ ~ CookingTimes[2]
execute if data block ~ ~ ~ {Items:[{id:"minecraft:cod",tag:{id:"cam:fish"}}]} if score @s CAM_fish matches 599 run tag @s add CAM_fish

execute store result score @s CAM_fish run data get block ~ ~ ~ CookingTimes[3]
execute if data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:cod",tag:{id:"cam:fish"}}]} if score @s CAM_fish matches 599 run tag @s add CAM_fish

schedule function cam:machine/furnace/tick/recipes/fish/schedule 1t
scoreboard players reset @s CAM_fish