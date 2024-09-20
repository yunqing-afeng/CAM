execute as @a[scores={CAM_blind=0..}] run scoreboard players remove @s CAM_blind 1

execute as @a[scores={CAM_blind=1..},predicate=cam:enchant/blindness/blind] at @s anchored eyes positioned ^ ^ ^2.5 as @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] run effect give @s minecraft:darkness 13 0


scoreboard players reset @a[scores={CAM_blind=1..}] CAM_blind