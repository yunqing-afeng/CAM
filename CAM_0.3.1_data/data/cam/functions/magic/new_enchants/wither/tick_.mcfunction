#Originally developed by Nebulirion,Adapted by CR_019

execute as @s[predicate=cam:enchant/wither/1] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] wither 3 1
execute as @s[predicate=cam:enchant/wither/2] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] wither 7 1
execute as @s[predicate=cam:enchant/wither/3] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] wither 12 1
