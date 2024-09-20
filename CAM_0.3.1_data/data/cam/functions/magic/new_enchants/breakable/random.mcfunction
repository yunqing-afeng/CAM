execute store result score @s CAM_breaklvl run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:breakable"}].lvl 1
scoreboard players add @s CAM_breaklvl 1
scoreboard players set #random_min random 1
scoreboard players set #random_max random 65536
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random *= @s CAM_breaklvl
execute unless score @s random matches 1..65536 run function cam:magic/new_enchants/breakable/function