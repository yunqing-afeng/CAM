advancement revoke @s only cam:enchants/poison
execute on attacker store result score #temp CAM_enchant_lvl run data get entity @s HandItems[0].tag.CAM_Enchantments[{id:"cam:poison"}].lvl
function cam:magic/new_enchants/_entity/misc/poison/func