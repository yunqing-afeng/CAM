execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:lantern"},{Slot:1b,id:"minecraft:paper"},{Slot:2b,id:"minecraft:paper"},{Slot:3b,id:"minecraft:paper"},{Slot:10b,id:"minecraft:paper"},{Slot:12b,id:"minecraft:paper"},{Slot:19b,id:"minecraft:paper"},{Slot:21b,id:"minecraft:paper"}]} if entity @s[scores={CNC_table_count=8}] run item replace block ~ ~ ~ container.16 with lantern{CAM_palace_lantern:1b,CAM_lantern_type:22,CustomModelData:2224085,Output:1b,id:"cam:palace_lantern",display:{Name:"[{\"translate\":\"item.cam.palace_lantern\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"translate\":\"lore.cam.general\",\"with\":[{\"translate\":\"lore.cam.color\"},{\"translate\":\"lore.cam.white\"}],\"color\":\"gray\",\"italic\":\"false\"}","{\"translate\":\"lore.cam.general\",\"with\":[{\"translate\":\"lore.cam.pattern\"},{\"translate\":\"lore.cam.pure\"}],\"color\":\"gray\",\"italic\":\"false\"}"]}}