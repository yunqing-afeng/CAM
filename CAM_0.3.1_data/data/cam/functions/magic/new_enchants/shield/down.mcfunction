scoreboard players set @s CAM_shield_down 60
execute if entity @s[tag=CAM_shield] run particle totem_of_undying ~ ~ ~ 1 1 1 1 100 normal
tag @s remove CAM_shield