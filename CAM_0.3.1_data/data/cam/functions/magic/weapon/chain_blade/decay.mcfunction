execute store result score @s CAM_chain_decay run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.CAM_Enchantments[{id:"cam:decay"}].lvl
execute if score @s CAM_chain_decay matches 1 run effect give @s hunger 12 2
execute if score @s CAM_chain_decay matches 2 run effect give @s hunger 28 2
execute if score @s CAM_chain_decay matches 3 run effect give @s hunger 40 2

execute if score @s CAM_chain_decay matches 1 run effect give @s weakness 12 0
execute if score @s CAM_chain_decay matches 2 run effect give @s weakness 28 0
execute if score @s CAM_chain_decay matches 3 run effect give @s weakness 40 1

scoreboard players reset @s CAM_chain_decay