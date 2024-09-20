#获取已占槽位
function cnc:machine/crafting_table/recipes/count
execute if score @s CNC_table_count matches 1.. run function cnc:machine/crafting_table/recipeform
execute unless score @s CNC_table_count matches 1.. run item replace block ~ ~ ~ container.16 with minecraft:firework_star{CustomModelData:9102025,display:{Name:"{\"translate\":\"item.cnc.crafting_table_output\"}"},CNC_bg:1b,Output:1b}
#初始化变量
scoreboard players reset @s CNC_table_count
#shift处理相关
execute if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Output:1b}}]} run scoreboard players add @s CNC_shiftdealt 1