#放置与破坏处理
execute as @s[type=minecraft:armor_stand,tag=cam_barrel,tag=!CAM_barrel_enable] at @s align xyz if block ~ ~ ~ minecraft:barrel run function cam:machine/barrel/replace
execute as @s[type=minecraft:armor_stand,tag=cam_barrel,tag=CAM_barrel_enable] at @s unless block ~ ~ ~ minecraft:barrel run function cam:machine/barrel/clear
execute as @s[type=minecraft:armor_stand,tag=cam_barrel,tag=CAM_barrel_enable] run data modify entity @s Fire set value 32767s

#功能
execute as @s[type=minecraft:armor_stand,tag=cam_barrel,tag=CAM_barrel_enable] at @s run function cam:machine/barrel/function
