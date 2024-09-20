scoreboard players set @s CAM_villagertype 0
execute if data entity @s VillagerData:{type:"minecraft:snow"} run scoreboard players set @s CAM_villagertype 1
execute if data entity @s VillagerData:{type:"minecraft:jungle"} run scoreboard players set @s CAM_villagertype 2
execute if data entity @s VillagerData:{type:"minecraft:swamp"} run scoreboard players set @s CAM_villagertype 3