#初始化变量和tag
scoreboard players set @s CNC_shiftdealt 2
scoreboard players set @a CNC_player_count 37
scoreboard players reset @a CNC_item_trigger
#检测玩家剩余槽位数和当前物品最大可堆叠数量，以及计分板数据转移
execute unless data block ~ ~ ~ {Items:[{Slot:16b}]} as @a[tag=CNC_shiftcheck] at @s run function cnc:machine/crafting_table/shift_player
scoreboard players operation @s CNC_player_count = @a[tag=CNC_shiftcheck] CNC_player_count
function cnc:machine/crafting_table/shift_data_get
scoreboard players operation @s CNC_player_count *= @s CNC_item_trigger
execute store result score @s CNC_shift_muti run clear @a[tag=CNC_shiftcheck] #uin:tech/all{Output:1b} 0
scoreboard players operation @s CNC_shiftdealt *= @s CNC_shift_muti
#模拟执行合成操作，以确定可执行的最大合成次数
execute unless data block ~ ~ ~ {Items:[{Slot:16b}]} if entity @e[tag=CNC_shiftcheck] run function cnc:machine/crafting_table/shifttest
execute if data block ~ ~ ~ {Items:[{Slot:16b}]} unless score @s CNC_shiftdealt < @s CNC_player_count run function cnc:machine/crafting_table/recipes/clear
scoreboard players operation @s CNC_shiftdealt /= @s CNC_shift_muti
#补偿机制相关
execute as @e[tag=CNC_comp] run scoreboard players remove @s CNC_shiftdealt 1
#清除输出栏
item replace block ~ ~ ~ container.16 with minecraft:air
#（辅助）给予次数运算
scoreboard players remove @s CNC_shiftdealt 2
#计分板数据转移
scoreboard players operation @a[tag=CNC_shiftcheck] CNC_shiftdealt = @s CNC_shiftdealt
#给予玩家物品
execute unless data block ~ ~ ~ {Items:[{Slot:16b}]} as @e[tag=CNC_shiftcheck] at @s run function cnc:machine/crafting_table/shiftdealt
#输出栏处理
execute if entity @e[tag=CNC_shiftcheck] run item replace block ~ ~ ~ container.16 with minecraft:firework_star{CustomModelData:9102025,display:{Name:"{\"translate\":\"item.cnc.crafting_table_output\"}"},CNC_bg:1b,Output:1b}
#初始化
tag @s remove CNC_comp