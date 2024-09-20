loot spawn ~ ~ ~ loot cam:villager/craftsman/weapon
execute as @e[type=item,limit=1,distance=..1,sort=nearest] at @s run function cam:villager/fisherman/craftsman/itemdeal/itemdeal_weapon
kill @e[tag=CAM_temp1,type=item]
kill @e[tag=CAM_temp2,type=item]

