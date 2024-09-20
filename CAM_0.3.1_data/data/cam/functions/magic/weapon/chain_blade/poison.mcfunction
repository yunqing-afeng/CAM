execute store result score @s CAM_chain_poison run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.CAM_Enchantments[{id:"cam:poison"}].lvl
execute if score @s CAM_chain_poison matches 1 run effect give @s poison 3 1
execute if score @s CAM_chain_poison matches 2 run effect give @s poison 7 1
execute if score @s CAM_chain_poison matches 3 run effect give @s poison 12 1

scoreboard players reset @s CAM_chain_poison