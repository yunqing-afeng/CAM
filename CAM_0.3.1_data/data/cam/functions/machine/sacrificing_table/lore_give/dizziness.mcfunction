execute store result score @s CAM_sac_lore_lvl run data get block ~-1 255 ~ Items[0].tag.CAM_Enchantments[0].lvl
execute if score @s CAM_sac_lore_lvl matches 1 run data modify block ~ 319 ~ Items[0].tag.display.Lore prepend value "{\"translate\":\"enchantment.cam.general\",\"with\":[{\"translate\":\"enchant.cam.dizziness\"},{\"translate\":\"enchantment.level.1\"}],\"color\":\"gray\",\"italic\":\"false\"}"
execute if score @s CAM_sac_lore_lvl matches 2 run data modify block ~ 319 ~ Items[0].tag.display.Lore prepend value "{\"translate\":\"enchantment.cam.general\",\"with\":[{\"translate\":\"enchant.cam.dizziness\"},{\"translate\":\"enchantment.level.2\"}],\"color\":\"gray\",\"italic\":\"false\"}"
execute if score @s CAM_sac_lore_lvl matches 3 run data modify block ~ 319 ~ Items[0].tag.display.Lore prepend value "{\"translate\":\"enchantment.cam.general\",\"with\":[{\"translate\":\"enchant.cam.dizziness\"},{\"translate\":\"enchantment.level.3\"}],\"color\":\"gray\",\"italic\":\"false\"}"