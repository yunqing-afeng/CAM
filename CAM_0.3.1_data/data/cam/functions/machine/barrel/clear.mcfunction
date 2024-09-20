execute at @s if entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2] run loot spawn ~ ~ ~ loot cam:cam/wine_barrel
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2,sort=nearest,limit=1]
kill @s