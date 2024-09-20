execute if entity @s[tag=!CAM_hang] if block ~ ~ ~ minecraft:lantern[hanging=true] store result score $temp CAM_lantern_type run data get entity @s ArmorItems[3].tag.CustomModelData 1
execute if entity @s[tag=!CAM_hang] if block ~ ~ ~ minecraft:lantern[hanging=true] run scoreboard players add $temp CAM_lantern_type 1
execute if entity @s[tag=!CAM_hang] if block ~ ~ ~ minecraft:lantern[hanging=true] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get $temp CAM_lantern_type

execute if entity @s[tag=CAM_hang] if block ~ ~ ~ minecraft:lantern[hanging=false] store result score $temp CAM_lantern_type run data get entity @s ArmorItems[3].tag.CustomModelData 1
execute if entity @s[tag=CAM_hang] if block ~ ~ ~ minecraft:lantern[hanging=false] run scoreboard players remove $temp CAM_lantern_type 1
execute if entity @s[tag=CAM_hang] if block ~ ~ ~ minecraft:lantern[hanging=false] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get $temp CAM_lantern_type


execute if block ~ ~ ~ minecraft:lantern[hanging=true] run tag @s add CAM_hang
execute if block ~ ~ ~ minecraft:lantern[hanging=false] run tag @s remove CAM_hang
