execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:string"},{Slot:10b,id:"minecraft:string"},{Slot:12b,id:"minecraft:string"},{Slot:20b,id:"minecraft:feather"},{id:"minecraft:magenta_dye"}]} if entity @s[scores={CNC_table_count=5}] run item replace block ~ ~ ~ container.16 with item_frame{id:"cam:dream_catcher",display:{Name:"[{\"translate\":\"item.cam.dream_catcher\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"translate\":\"lore.cam.dc.flower\",\"color\":\"gray\",\"italic\":\"false\"}"]},CAM_dream_catcher:1b,CustomModelData:9105013,CAM_catcher_type:6,Output:1b}