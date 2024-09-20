#开头基础处理：物品处理 初始化变量
execute store result score @a CAM_barrelerror run clear @a minecraft:firework_star{CAM_bg:1b} 0

#放置与破坏处理
execute as @e[type=minecraft:armor_stand,tag=cam_barrel] at @s run function cam:machine/barrel/tick_
