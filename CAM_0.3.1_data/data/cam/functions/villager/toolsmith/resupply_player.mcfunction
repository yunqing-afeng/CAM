advancement revoke @s only cam:countryside_and_magic/tool
execute positioned ^ ^ ^3 as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:toolsmith"}},sort=nearest,limit=1] at @s run function cam:villager/toolsmith/resupply_villager