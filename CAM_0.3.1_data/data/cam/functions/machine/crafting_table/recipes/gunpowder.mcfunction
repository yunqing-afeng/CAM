scoreboard players reset @s CNC_craftag

#初始化
scoreboard players reset @s CNC_tag_out
scoreboard players reset @s CNC_craftag
#设置id
scoreboard players set @s CNC_tag_id 0
#tag检测
function cnc:machine/crafting_table/tag
execute if score @s CNC_craftag matches 4 run scoreboard players set @s CNC_tag_out 1

execute store result score @s CNC_SLout if data block ~ ~ ~ Items[{id:"minecraft:charcoal",tag:{id:"cam:sulfur"}}]

execute if block ~ ~ ~ minecraft:barrel if entity @s[scores={CNC_table_count=4,CNC_SLout=2,CNC_tag_out=1}] run item replace block ~ ~ ~ container.16 with gunpowder{Output:1b} 4