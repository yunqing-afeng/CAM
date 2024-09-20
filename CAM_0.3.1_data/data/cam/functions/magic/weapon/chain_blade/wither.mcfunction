execute store result score @s CAM_chain_wither run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.CAM_Enchantments[{id:"cam:wither"}].lvl
execute if score @s CAM_chain_wither matches 1 run effect give @s wither 3 1
execute if score @s CAM_chain_wither matches 2 run effect give @s wither 7 1
execute if score @s CAM_chain_wither matches 3 run effect give @s wither 12 1

scoreboard players reset @s CAM_chain_wither
