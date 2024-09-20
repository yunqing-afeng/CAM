data modify block ~1 255 ~ Items[0].tag.display.Lore append from block ~ 319 ~ Items[0].tag.display.Lore[0]
data remove block ~ 319 ~ Items[0].tag.display.Lore[0]
function cam:machine/sacrificing_table/lore_exhaustion
execute if data block ~1 255 ~ Items[0].tag.display.Lore run data modify block ~ 319 ~ Items[0].tag.display.Lore append from block ~1 255 ~ Items[0].tag.display.Lore[0]
scoreboard players remove @s CAM_sac_lore_re 1
data remove block ~1 255 ~ Items[0].tag.display.Lore[0]
execute unless score @s CAM_sac_lore_re matches ..0 run function cam:machine/sacrificing_table/lore_remove