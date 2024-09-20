execute as @a[scores={CAM_poison=1..},predicate=cam:enchant/poison/poison] at @s anchored eyes positioned ^ ^ ^2.5 run function cam:magic/new_enchants/poison/tick_

scoreboard players reset @a[scores={CAM_poison=1..}] CAM_poison