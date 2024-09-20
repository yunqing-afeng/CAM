execute as @a[scores={CAM_rampage=0..}] run scoreboard players remove @s CAM_rampage 1
execute as @a unless predicate cam:enchant/rampage run scoreboard players set @s CAM_rampage 0
execute as @a[scores={CAM_rampage=100..}] if predicate cam:enchant/rampage at @s run function cam:magic/new_enchants/rampage/execute

execute as @e[type=#uin:tech/mobs] if score @s CAM_rampage_timer matches 0.. run scoreboard players remove @s CAM_rampage_timer 1
execute as @e[type=#uin:tech/mobs] if score @s CAM_rampage_timer matches 0.. at @s if score #particle CAM_module matches 1 run particle dust_color_transition 1 0.906 0.075 .5 0.871 0.314 0.078 ~ ~1 ~ .5 .5 .5 0 1

execute as @e[type=#uin:tech/mobs] if score @s CAM_rampage_timer matches 0 run attribute @s generic.attack_damage modifier remove 1010-2139-10AD-3FEB-1245