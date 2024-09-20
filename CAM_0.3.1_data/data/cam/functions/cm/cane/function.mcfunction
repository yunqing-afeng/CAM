tag @s add CAM_executer
execute as @e[distance=..5,type=#uin:tech/mobs,tag=!CAM_executer] at @s run function cam:magic/new_enchants/execution/execute
execute anchored eyes positioned ~ ~2.5 ~ run function cam:cm/cane/particle
tag @s remove CAM_executer
scoreboard players set @s CAM_cane_timer 100
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.25
playsound minecraft:block.bell.use player @a ~ ~ ~ .5 0