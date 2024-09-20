advancement revoke @s only cam:countryside_and_magic/edification
execute store result score @s CAM_edilvl run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:edification"}].lvl 1
scoreboard players set #random_min random 3
scoreboard players set #random_max random 5
function cam:random/random
scoreboard players operation @s CAM_edi_xp = #result random
scoreboard players operation @s CAM_edi_xp *= @s CAM_edilvl
execute if score @s CAM_edi_xp matches 1.. run function cam:magic/new_enchants/edification/xp