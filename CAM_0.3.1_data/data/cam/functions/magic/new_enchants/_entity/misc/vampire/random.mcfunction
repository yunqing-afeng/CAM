execute store result score @s CAM_enchant_lvl run data get entity @s HandItems[0].tag.CAM_Enchantments[{id:"cam:vampire"}].lvl
scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random /= @s CAM_enchant_lvl
execute if score @s random matches 0..4 run function cam:magic/new_enchants/_entity/misc/vampire/func
