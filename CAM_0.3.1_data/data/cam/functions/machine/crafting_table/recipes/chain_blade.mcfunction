execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,id:"minecraft:iron_sword"},{Slot:10b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:iron_nugget"},{Slot:20b,id:"minecraft:iron_nugget"}]} if entity @s[scores={CNC_table_count=4}] unless data block ~ ~ ~ {Items:[{id:"minecraft:iron_sword",tag:{id:"cam:chain_blade"}}]} run item replace block ~ ~ ~ container.16 with minecraft:iron_sword{id:"cam:chain_blade",CustomModelData:9102031,CAM_chainblade:0b,CustomDamage:1b,display:{Name:"[{\"translate\":\"item.cam.chain_blade\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"},Output:1b,dartsdamage:2}
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,id:"minecraft:iron_sword"},{Slot:12b,id:"minecraft:iron_ingot"},{Slot:10b,id:"minecraft:iron_nugget"},{Slot:20b,id:"minecraft:iron_nugget"}]} if entity @s[scores={CNC_table_count=4}] unless data block ~ ~ ~ {Items:[{id:"minecraft:iron_sword",tag:{id:"cam:chain_blade"}}]} run item replace block ~ ~ ~ container.16 with minecraft:iron_sword{id:"cam:chain_blade",CustomModelData:9102031,CAM_chainblade:0b,CustomDamage:1b,display:{Name:"[{\"translate\":\"item.cam.chain_blade\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"},Output:1b,dartsdamage:2}