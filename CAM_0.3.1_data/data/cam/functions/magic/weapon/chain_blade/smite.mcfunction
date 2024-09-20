execute store result score @s CAM_chain_smite run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.Enchantments[{id:"minecraft:smite"}].lvl 5
#execute store result score $temp CAM_chain_smite run data get entity @s damage 2
#scoreboard players operation @s CAM_chain_smite += $temp CAM_chain_smite
scoreboard players operation @s CAM_chain_smite /= #temp CAM_chain_damage
scoreboard players operation @s CAM_chain_damage += @s CAM_chain_smite

scoreboard players reset @s CAM_chain_smite