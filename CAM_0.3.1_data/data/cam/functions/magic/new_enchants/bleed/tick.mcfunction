#timer
execute as @e[type=#uin:tech/mobs] run function cam:magic/new_enchants/bleed/timer
#bleed 
execute as @e[type=#uin:tech/mobs,tag=CAM_bleed] at @s run function cam:magic/new_enchants/bleed/bleed

execute as @a[predicate=cam:enchant/bleed] if score @s CAM_bleed matches 60.. at @s anchored eyes positioned ^ ^ ^2.5 as @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1] run function cam:magic/new_enchants/bleed/compare
scoreboard players reset @a CAM_bleed

execute as @a[nbt={DeathTime:1s}] run function cam:magic/new_enchants/bleed/reset