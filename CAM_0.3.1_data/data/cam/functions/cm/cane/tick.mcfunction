execute as @a[predicate=cam:misc/cane] if score @s CAM_cane_use matches 1.. if score @s CAM_cane_timer matches ..0 at @s run function cam:cm/cane/function
execute as @a unless score @s CAM_cane_timer matches ..-1 run scoreboard players remove @s CAM_cane_timer 1
execute as @a if score @s CAM_cane_timer matches 0 at @s run playsound minecraft:entity.vex.ambient player @s ~ ~ ~ 2 0
scoreboard players reset @a CAM_cane_use