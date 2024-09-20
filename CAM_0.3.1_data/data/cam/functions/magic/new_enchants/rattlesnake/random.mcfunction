execute store result score @s CAM_rattlelvl run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:rattlesnake"}].lvl 1
tag @s add CAM_rattlesnake_owner
scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random /= @s CAM_rattlelvl
execute if score @s random matches 0..4 anchored eyes positioned ^ ^ ^2.5 as @e[nbt={HurtTime:10s},sort=nearest,limit= 1,tag=!rattlesnake] run function cam:magic/new_enchants/rattlesnake/effect
tag @s remove CAM_rattlesnake_owner