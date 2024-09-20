advancement revoke @s only cam:enchants/wither
execute on attacker store result score #temp CAM_enchant_lvl run data get entity @s HandItems[0].tag.CAM_Enchantments[{id:"cam:wither"}].lvl
function cam:magic/new_enchants/_entity/misc/wither/func