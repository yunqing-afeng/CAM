execute as @s[scores={CAM_poison=1..},predicate=cam:enchant/poison/1] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] poison 3 1
execute as @s[scores={CAM_poison=1..},predicate=cam:enchant/poison/2] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] poison 7 1
execute as @s[scores={CAM_poison=1..},predicate=cam:enchant/poison/3] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] poison 12 1