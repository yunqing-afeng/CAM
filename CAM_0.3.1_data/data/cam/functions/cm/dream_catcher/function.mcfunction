advancement revoke @s only cam:countryside_and_magic/dream_catcher_effect

execute as @e[type=item_frame,tag=CAM_dream_catcher,sort=nearest,limit=1,distance=..7] run tag @s add CAM_catcher_effect

execute as @e[tag=CAM_catcher_effect] run scoreboard players set @s CAM_catcher_functimer 1200
execute if entity @e[tag=CAM_catcher_effect] run scoreboard players set @s CAM_catcher_functimer 6000
execute if entity @e[tag=CAM_catcher_effect] run scoreboard players operation @s CAM_catcher_functype = @e[tag=CAM_catcher_effect] CAM_catcher_type

execute if score @s CAM_catcher_functype matches 11 run function cam:cm/dream_catcher/function_

execute if score @s CAM_catcher_functype matches 4 run tag @s add CAM_catcher_resistence
execute if score @s CAM_catcher_functype matches 12 run effect give @s absorption 300 0 true