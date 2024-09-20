#初始化
execute store result score @s CAM_sac_lore_re run data get block ~ 319 ~ Items[0].tag.display.Lore
execute store result score @s CAM_sac_lore_add run data get block ~ 319 ~ Items[0].tag.CAM_Enchantments
#移除注释
setblock ~1 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
function cam:machine/sacrificing_table/lore_remove
setblock ~1 255 ~ air
#添加注释
setblock ~-1 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
function cam:machine/sacrificing_table/lore_add
setblock ~-1 255 ~ air