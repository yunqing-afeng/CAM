loot replace block ~ ~ ~ container.1 loot cam:sacrificing_table/sacrifice

execute unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} unless data block ~ ~ ~ Items[{Slot:1b}].tag.CAM_spe run data modify block ~ 319 ~ Items[0].tag.CAM_Enchantments[{Slot:1b}] merge from block ~ ~ ~ Items[{Slot:1b}].tag.CAM_Enchantments[0]
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_spe:2b}}]} run data modify block ~ 319 ~ Items[0].tag.CAM_Enchantments[{Slot:2b}] merge from block ~ ~ ~ Items[{Slot:1b}].tag.CAM_Enchantments[0]
execute if block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} run function cam:machine/sacrificing_table/fail
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{CAM_Enchantments:[{id:"cam:failure"}]}}]} run function cam:machine/sacrificing_table/lore
