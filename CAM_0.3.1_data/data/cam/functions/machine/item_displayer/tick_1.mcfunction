#放置与破坏处理
execute as @s[type=minecraft:armor_stand,tag=cam_item_displayer] at @s align xyz if block ~ ~ ~ minecraft:blast_furnace run function cam:machine/item_displayer/replace
execute as @s[type=minecraft:armor_stand,tag=cam_item_displayer,tag=CAM_display_enable] at @s unless block ~ ~ ~ minecraft:barrel run function cam:machine/item_displayer/clear
execute as @s[type=minecraft:armor_stand,tag=cam_item_displayer,tag=CAM_display_enable] run data modify entity @s Fire set value 32767s
