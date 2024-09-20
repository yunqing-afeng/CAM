execute store result score @s CAM_vampirelvl run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:vampire"}].lvl 1

scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random /= @s CAM_vampirelvl
execute if score @s random matches 1..4 run function cam:magic/new_enchants/vampire/particle