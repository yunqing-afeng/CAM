execute as @s[scores={CAM_decay=1..},predicate=cam:enchant/decay/1] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] hunger 12 2
execute as @s[scores={CAM_decay=1..},predicate=cam:enchant/decay/2] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] hunger 28 2
execute as @s[scores={CAM_decay=1..},predicate=cam:enchant/decay/3] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] hunger 40 2

execute as @s[scores={CAM_decay=1..},predicate=cam:enchant/decay/1] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] weakness 12 0
execute as @s[scores={CAM_decay=1..},predicate=cam:enchant/decay/2] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] weakness 28 0
execute as @s[scores={CAM_decay=1..},predicate=cam:enchant/decay/3] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] weakness 40 1