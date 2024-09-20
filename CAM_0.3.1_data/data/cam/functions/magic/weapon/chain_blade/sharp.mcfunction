execute store result score @s CAM_chain_sharp run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
#execute store result score $temp CAM_chain_sharp run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.dartsdamage 2
scoreboard players add @s CAM_chain_sharp 1
#scoreboard players operation @s CAM_chain_sharp += $temp CAM_chain_sharp
scoreboard players operation @s CAM_chain_sharp /= #temp CAM_chain_damage
scoreboard players operation @s CAM_chain_damage += @s CAM_chain_sharp

scoreboard players reset @s CAM_chain_sharp