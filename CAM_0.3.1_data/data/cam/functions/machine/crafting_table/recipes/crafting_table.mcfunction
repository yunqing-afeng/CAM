execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:crafting_table"},{tag:{id:"cam:weed"}}]} if entity @s[scores={CNC_table_count=2}] unless data block ~ ~ ~ {Items:[{id:"minecraft:crafting_table",tag:{id:"cam:crafting_table"}}]} run item replace block ~ ~ ~ container.16 with crafting_table{CAM_crafting_table:1b,display:{Name:"[{\"translate\":\"item.cnc.crafting_table\",\"italic\":false}]"},CustomModelData:9102026,id:"cam:crafting_table",Output:1b}