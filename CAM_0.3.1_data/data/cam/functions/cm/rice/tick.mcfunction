#放置与破坏处理
execute as @e[type=minecraft:armor_stand,tag=cam_rice] at @s unless block ~ ~ ~ minecraft:wheat run function cam:cm/rice/clear
execute as @e[type=minecraft:armor_stand,tag=cam_rice] at @s if block ~ ~ ~ minecraft:wheat run function cam:cm/rice/stage

