data modify block ~-1 255 ~ Items[0].tag.CAM_Enchantments append from block ~ 319 ~ Items[0].tag.CAM_Enchantments[0]

execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:backbite"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/backbite
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:breakable"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/breakable
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:tyrant"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/tyrant
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:shield"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/shield
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:stormchop"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/stormchop
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:bloodrage"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/bloodrage
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:looting"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/looting
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:phylactery"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/phylactery
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:vampire"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/vampire
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:wither"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/wither
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:dizziness"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/dizziness
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:freeze"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/freeze
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:poison"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/poison
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:rampage"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/rampage
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:rattlesnake"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/rattlesnake
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:decay"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/decay
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:edification"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/edification
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:swift"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/swift
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:catalyze_0"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/catalyze/random
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:catalyze_1"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/catalyze/health
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:catalyze_2"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/catalyze/strength
execute if data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{id:"cam:catalyze_3"}] unless data block ~-1 255 ~ Items[0].tag.CAM_Enchantments[{hide:1b}] run function cam:machine/sacrificing_table/lore_give/catalyze/defence


data remove block ~ 319 ~ Items[0].tag.CAM_Enchantments[0]
data modify block ~ 319 ~ Items[0].tag.CAM_Enchantments append from block ~-1 255 ~ Items[0].tag.CAM_Enchantments[0]
data remove block ~-1 255 ~ Items[0].tag.CAM_Enchantments[0]
scoreboard players remove @s CAM_sac_lore_add 1
execute unless score @s CAM_sac_lore_add matches ..0 run function cam:machine/sacrificing_table/lore_add