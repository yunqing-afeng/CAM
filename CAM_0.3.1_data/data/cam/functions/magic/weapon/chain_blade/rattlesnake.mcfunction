execute store result score @s CAM_rattlelvl run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.CAM_Enchantments[{id:"cam:rattlesnake"}].lvl 1
scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random /= @s CAM_rattlelvl
execute if score @s random matches 0..4 if score #particle CAM_module matches 1 run particle minecraft:enchanted_hit ~ ~ ~ 0.25 0.25 0.25 1 20 normal
execute if score @s random matches 0..4 run scoreboard players add @s CAM_chain_damage 6

scoreboard players reset @s CAM_rattlelvl

