scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @s CAM_enchant_lvl = #result random
execute store result score $player CAM_enchant_lvl run data get entity @s HandItems[0].tag.CAM_Enchantments[{id:"cam:rampage"}].lvl
scoreboard players operation $player CAM_enchant_lvl *= $level CAM_rampage
execute if score @s CAM_enchant_lvl <= $player CAM_enchant_lvl run effect give @s minecraft:strength 10 1
execute if score @s CAM_enchant_lvl <= $player CAM_enchant_lvl if score #particle CAM_module matches 1 run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.25 10 normal
scoreboard players set @s CAM_enchant_lvl 0