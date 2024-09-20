execute as @a[scores={CAM_freeze=0..}] run scoreboard players remove @s CAM_freeze 1

execute as @a[scores={CAM_freeze=1..},predicate=cam:enchant/freeze/freeze] at @s anchored eyes positioned ^ ^ ^2.5 run function cam:magic/new_enchants/freeze/tick_
execute as @a if score @s CAM_freezetimer matches 1.. run scoreboard players remove @s CAM_freezetimer 1
execute as @a if score @s CAM_freezetimer matches 1.. run function cam:magic/new_enchants/freeze/ext_

scoreboard players reset @a[scores={CAM_freeze=1..}] CAM_freeze