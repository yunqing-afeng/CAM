execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:lantern"},{Slot:1b,id:"minecraft:paper"},{Slot:3b,id:"minecraft:paper"},{Slot:19b,id:"minecraft:paper"},{Slot:21b,id:"minecraft:paper"}]} if entity @s[scores={CNC_table_count=5}] run item replace block ~ ~ ~ container.16 with lantern{CAM_palace_lantern:1b,CAM_lantern_type:1,CustomModelData:2224001,Output:1b,id:"cam:palace_lantern",display:{Name:"[{\"translate\":\"item.cam.palace_lantern\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"translate\":\"lore.cam.general\",\"with\":[{\"translate\":\"lore.cam.color\"},{\"translate\":\"lore.cam.white\"}],\"color\":\"gray\",\"italic\":\"false\"}","{\"translate\":\"lore.cam.general\",\"with\":[{\"translate\":\"lore.cam.pattern\"},{\"translate\":\"lore.cam.hollow\"}],\"color\":\"gray\",\"italic\":\"false\"}"]}}