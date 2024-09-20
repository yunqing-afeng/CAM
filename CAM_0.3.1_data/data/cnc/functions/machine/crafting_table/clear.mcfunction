execute at @s if entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2] run loot spawn ~ ~ ~ loot cnc:cnc/crafting_table
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{Output:1b}}},distance=..2]
kill @s