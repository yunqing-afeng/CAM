advancement revoke @s only cam:enchants/decay
execute on attacker store result score #temp CAM_enchant_lvl run data get entity @s HandItems[0].tag.CAM_Enchantments[{id:"cam:decay"}].lvl
function cam:magic/new_enchants/_entity/misc/decay/func