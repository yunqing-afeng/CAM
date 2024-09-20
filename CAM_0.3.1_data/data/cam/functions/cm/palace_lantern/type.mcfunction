scoreboard players operation $temp1 CAM_lantern_type = @s CAM_lantern_type
scoreboard players operation $temp1 CAM_lantern_type *= #CAM_constant1 CAM_lantern_type
scoreboard players set $temp2 CAM_lantern_type 2224001
scoreboard players operation $temp1 CAM_lantern_type += $temp2 CAM_lantern_type
execute if block ~ ~ ~ minecraft:lantern[hanging=true] run scoreboard players remove $temp1 CAM_lantern_type 2
execute unless block ~ ~ ~ minecraft:lantern[hanging=true] run scoreboard players remove $temp1 CAM_lantern_type 3
execute if block ~ ~ ~ minecraft:lantern[hanging=true] run tag @s add CAM_hang
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get $temp1 CAM_lantern_type
execute store result entity @s ArmorItems[3].tag.CAM_lantern_type int 1 run scoreboard players get @s CAM_lantern_type