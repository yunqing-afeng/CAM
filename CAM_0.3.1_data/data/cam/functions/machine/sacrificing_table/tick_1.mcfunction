#放置与破坏处理
execute as @s[type=minecraft:armor_stand,tag=cam_sacrificing] at @s align xyz if block ~ ~ ~ minecraft:blast_furnace run function cam:machine/sacrificing_table/replace
execute as @s[type=minecraft:armor_stand,tag=cam_sacrificing,tag=CAM_sacrifice_enable] at @s unless block ~ ~ ~ minecraft:barrel run function cam:machine/sacrificing_table/clear
execute as @s[type=minecraft:armor_stand,tag=cam_sacrificing,tag=CAM_sacrifice_enable] run data modify entity @s Fire set value 32767s
