advancement revoke @s only cam:enchants/freeze
execute on attacker store result score #temp CAM_enchant_lvl run data get entity @s HandItems[0].tag.CAM_Enchantments[{id:"cam:freeze"}].lvl
function cam:magic/new_enchants/_entity/misc/freeze/func