execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:apple"},{id:"minecraft:honey_bottle"}]} if entity @s[scores={CNC_table_count=2}] unless data block ~ ~ ~ {Items:[{id:"minecraft:apple",tag:{id:"cam:honey_apple"}}]} run item replace block ~ ~ ~ container.16 with apple{display:{Name:"{\"translate\":\"item.cam.honeyapple\",\"italic\":\"false\"}"},CustomModelData:9102028,Output:1b,id:"cam:honey_apple",honey_apple:1b} 1
#检测替换
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:1b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_1 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:2b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_2 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:3b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_3 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:10b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_4 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:11b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_5 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:12b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_6 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:19b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_7 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:20b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_8 2
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{id:"cam:honey_apple"}},{Slot:21b,id:"minecraft:honey_bottle"}]} run scoreboard players set @s CNC_replace_9 2
