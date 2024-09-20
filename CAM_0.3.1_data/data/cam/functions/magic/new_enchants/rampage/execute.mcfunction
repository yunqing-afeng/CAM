scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @s CAM_rampage = #result random
execute store result score $player CAM_rampage run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:rampage"}].lvl
scoreboard players operation $player CAM_rampage *= $level CAM_rampage
execute if score @s CAM_rampage <= $player CAM_rampage run attribute @s minecraft:generic.attack_damage modifier add 1010-2139-10AD-3FEB-1245 "rampage" 0.5 multiply
execute if score @s CAM_rampage <= $player CAM_rampage if score #particle CAM_module matches 1 run particle dust_color_transition 1 0.906 0.075 .5 0.871 0.314 0.078 ~ ~1 ~ .5 .5 .5 0 20
execute unless score @s CAM_rampage <= $player CAM_rampage if score #particle CAM_module matches 1 run particle smoke ~ ~1 ~ .5 .5 .5 0 20
execute if score @s CAM_rampage <= $player CAM_rampage run scoreboard players set @s CAM_rampage_timer 200
execute if score @s CAM_rampage <= $player CAM_rampage if score #particle CAM_module matches 1 run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.25 10 normal
scoreboard players set @s CAM_rampage 0