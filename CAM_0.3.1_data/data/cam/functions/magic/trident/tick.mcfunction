#储存近战数据
execute as @a[predicate=cam:misc/trident/player] at @s run function cam:magic/trident/tick_
#判定扔出
execute as @a[predicate=cam:misc/bowenchant/choptest] run tag @s add CAM_storm_tri
execute as @a[scores={CAM_trident_use=1..}] at @s run scoreboard players operation @e[type=trident,sort=nearest,limit=1,predicate=cam:misc/bowenchant/trident] AE_player_id = @s AE_player_id
execute as @a[scores={CAM_trident_use=1..}] at @s run tag @e[type=trident,sort=nearest,limit=1,predicate=cam:misc/bowenchant/trident] add CAM_choptrident
execute as @e[type=trident,tag=CAM_choptrident] store result score @s CAM_storm_tri run data get entity @s Trident.tag.CAM_storm 1 

execute as @e[type=trident,predicate=cam:misc/trident/pick] run data modify entity @s Life set value 1

execute as @a[predicate=!cam:misc/bowenchant/choptest] run tag @s remove CAM_storm_tri
scoreboard players reset @a CAM_trident_use
tag @a remove CAM_tri_reset