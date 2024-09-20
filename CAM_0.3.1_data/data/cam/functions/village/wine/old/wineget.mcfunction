kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:potion",Count:1b},OnGround:1b},tag=CAM_tested,limit=1]
loot spawn ~ ~1 ~ loot cam:cam/winterwine

execute as @e[limit=1,sort= nearest,type= minecraft:item,nbt={Item:{tag:{CAM_wine:1b}}}] run function cam:village/wine/old/wineget_sub
