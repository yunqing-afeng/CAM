#Originally developed by Nebulirion,Adapted by CR_019

execute as @a[scores={CAM_wither=1..},predicate=cam:enchant/wither/wither] at @s anchored eyes positioned ^ ^ ^2.5 run function cam:magic/new_enchants/wither/tick_

scoreboard players reset @a[scores={CAM_wither=1..}] CAM_wither