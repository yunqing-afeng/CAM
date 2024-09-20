execute store result score @s CAM_dizzylvl run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:dizziness"}].lvl 1
scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random /= @s CAM_dizzylvl
execute if score @s random matches 0..4 run function cam:magic/new_enchants/dizziness/complex_effects