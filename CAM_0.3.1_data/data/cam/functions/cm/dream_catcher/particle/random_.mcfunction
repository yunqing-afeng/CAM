execute if score @s CAM_catcher_random matches -1 run function cam:cm/dream_catcher/particle/random
execute unless entity @s[tag=CAM_catcher_lock] unless score @s CAM_catcher_random matches -1 run scoreboard players set @s CAM_catcher_random -1
scoreboard players set @s CAM_catcher_timer 20
execute if entity @s[tag=!CAM_catcher_lock] run scoreboard players set @s CAM_catcher_timer 40
tag @s remove CAM_catcher_lock