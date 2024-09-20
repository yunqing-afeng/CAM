execute as @a[scores={CAM_decay=0..}] run scoreboard players remove @s CAM_decay 1

execute as @a[scores={CAM_decay=1..},predicate=cam:enchant/decay/decay] at @s anchored eyes positioned ^ ^ ^2.5 run function cam:magic/new_enchants/decay/tick_


scoreboard players reset @a[scores={CAM_decay=1..}] CAM_decay