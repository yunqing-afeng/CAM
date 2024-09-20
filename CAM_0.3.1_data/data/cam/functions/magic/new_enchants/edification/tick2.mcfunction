#未使用
execute as @a[scores={CAM_edification=1..},predicate=cam:enchant/edification] at @s run function cam:magic/new_enchants/edification/random
scoreboard players reset @a CAM_edification

#anchored eyes positioned ^ ^ ^2.5 at @e[distance=..2.5,tag=!CAM_edi,limit=1,sort=nearest]