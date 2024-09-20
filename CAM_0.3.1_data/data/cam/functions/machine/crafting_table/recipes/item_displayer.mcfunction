#初始化
scoreboard players reset @s CNC_tag_out
scoreboard players reset @s CNC_craftag
#设置id
scoreboard players set @s CNC_tag_id 2
#tag检测
function cnc:machine/crafting_table/tag
execute if score @s CNC_craftag matches 7 run scoreboard players set @s CNC_tag_out 1

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b},{Slot:2b,id:"minecraft:glass"},{Slot:3b},{Slot:10b},{Slot:11b,id:"minecraft:redstone"},{Slot:12b},{Slot:19b},{Slot:20b},{Slot:21b},]} if entity @s[scores={CNC_table_count=9,CNC_tag_out=1}] run item replace block ~ ~ ~ container.16 with blast_furnace{CustomModelData:9102098,CAM_item_displayer:1b,display:{Name:"[{\"translate\":\"item.cam.item_displayer\",\"italic\":false}]"},Output:1b}