#开头基础处理：物品处理 初始化变量
kill @e[predicate=cnc:crafting_table/bg]
execute store result score @a CNC_crafterror run clear @a minecraft:firework_star{CNC_bg:1b} 0
execute as @a store result score @s CNC_bottlecount run clear @a #uin:tech/all 0

#放置与破坏处理
execute as @e[type=minecraft:armor_stand,tag=cnc_crafting] at @s run function cnc:machine/crafting_table/tick_
#功能

#Shift键处理
execute as @a[nbt={Inventory:[{tag:{Output:1b}}]}] run tag @s add CNC_shiftcheck
execute if entity @a[tag=CNC_shiftcheck] as @e[type=minecraft:armor_stand,tag=cnc_crafting,tag=CNC_craft_enable] at @s unless data block ~ ~ ~ {Items:[{Slot:16b}]} run function cnc:machine/crafting_table/shiftcheck
#配方处理
execute as @e[type=minecraft:armor_stand,tag=cnc_crafting,tag=CNC_craft_enable] at @s if entity @a[distance=..8] run function cnc:machine/crafting_table/recipe
#输出标签处理
execute as @a[nbt={Inventory:[{tag:{Output:1b}}]}] at @s run function cnc:machine/crafting_table/inventory
#误放入处理
execute as @e[type=minecraft:armor_stand,tag=cnc_crafting,tag=CNC_craft_enable] at @s if entity @a[distance=..8] run function cnc:machine/crafting_table/check
#Shift键处理 初始化tag
tag @a remove CNC_shiftcheck


#结尾基础处理：物品处理 初始化变量
clear @a firework_star{CNC_bg:1b}

scoreboard players reset @a CNC_replace_err
scoreboard players reset $temp CNC_rclick_suc
scoreboard players reset @a CNC_rclick


#update
execute as @e[type=minecraft:armor_stand,tag=cnc_crafting,tag=CNC_craft_enable] run function cnc:machine/crafting_table/update/update