execute as @s[type=minecraft:armor_stand,tag=cnc_crafting] at @s align xyz if block ~ ~ ~ minecraft:crafting_table run function cnc:machine/crafting_table/replace
execute as @s[type=minecraft:armor_stand,tag=cnc_crafting,tag=CNC_craft_enable] at @s unless block ~ ~ ~ minecraft:barrel run function cnc:machine/crafting_table/clear
execute as @s[type=minecraft:armor_stand,tag=cnc_crafting,tag=CNC_craft_enable] run data modify entity @s Fire set value 32767s
execute as @s[type=minecraft:armor_stand,tag=cnc_crafting,tag=CNC_craft_enable] at @s run function cnc:machine/crafting_table/gui