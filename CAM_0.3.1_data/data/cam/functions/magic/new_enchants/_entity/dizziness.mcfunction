advancement revoke @s only cam:enchants/decay
execute on attacker store result score #temp CAM_enchant_lvl run data get entity @s HandItems[0].tag.CAM_Enchantments[{id:"cam:dizziness"}].lvl
function cam:magic/new_enchants/_entity/misc/dizziness/random