scoreboard players operation $temp1 CAM_lantern_type = @s CAM_lantern_type
scoreboard players operation $temp1 CAM_lantern_type *= #CAM_constant1 CAM_lantern_type
scoreboard players set $temp2 CAM_lantern_type 2224001
scoreboard players operation $temp1 CAM_lantern_type += $temp2 CAM_lantern_type
scoreboard players remove $temp1 CAM_lantern_type 1
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get $temp1 CAM_lantern_type
execute store result entity @s ArmorItems[3].tag.CAM_lantern_type int 1 run scoreboard players get @s CAM_lantern_type

scoreboard players set #random_min random 100
scoreboard players set #random_max random 300
function cam:random/random
scoreboard players operation @s CAM_lantern_v = #result random