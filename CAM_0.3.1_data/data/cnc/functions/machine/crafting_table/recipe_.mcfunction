
#右键侦测前置
execute as @a store result score @s CNC_rclick run clear @s #uin:tech/all{Output:1b} 0
execute as @a store result score @s CNC_rclick_sub run clear @s #uin:tech/all{Output:1b,CNC_bg:1b} 0
execute as @a run scoreboard players operation @s CNC_rclick -= @s CNC_rclick_sub
execute at @s if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b}}]} unless data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b,CNC_bg:1b}}]} store result score @s CNC_rclick_sub3 run data get block ~ ~ ~ Items[{Slot:16b}].Count
execute as @s run scoreboard players operation @s CNC_rclick_sub2 -= @s CNC_rclick_sub3
scoreboard players operation @s 6 = @s CNC_rclick_sub2
#清除合成区物品和右键侦测
execute unless data block ~ ~ ~ {Items:[{Slot:16b}]} if entity @s[tag=!CNC_not_to_clear] run function cnc:machine/crafting_table/recipes/clear
tag @s remove CNC_not_to_clear
execute if data block ~ ~ ~ {Items:[{Slot:16b,tag:{CNC_bg:1b}}]} run tag @s add CNC_not_to_clear
execute at @s if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b}}]} unless data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b,CNC_bg:1b}}]} unless score @s CNC_rclick_sub2 matches 0 if entity @a[sort=nearest,limit=1,scores={CNC_rclick=1..},distance=..5] run function cnc:machine/crafting_table/rightclick
execute if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b}}]} run item replace block ~ ~ ~ container.16 with minecraft:air
execute if data block ~ ~ ~ {Items:[{Slot:16b}]} unless data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b}}]} at @s run function cnc:machine/crafting_table/replace/16_spe
execute if data block ~ ~ ~ {Items:[{Slot:16b}]} unless data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b}}]} at @s run clear @a[sort=nearest,limit=1,scores={CNC_rclick=1..},distance=..5] #uin:tech/all{Output:1b}
#配方检测
execute if entity @a[distance=..5] run function #cnc:recipes
#右键侦测前置
execute at @s if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b}}]} unless data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b,CNC_bg:1b}}]} store result score @s CNC_rclick_sub2 run data get block ~ ~ ~ Items[{Slot:16b}].Count
