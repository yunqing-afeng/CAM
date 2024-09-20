execute if score @s CAM_bleed_timer matches ..-1 run scoreboard players set @s CAM_bleed_timer 120 

execute if score @s CAM_bleed_tier1 <= @s CAM_bleed_tier2 if score @s CAM_bleed_tier1 <= @s CAM_bleed_tier3 run tag @s add CAM_bleed_1
execute if score @s CAM_bleed_tier2 < @s CAM_bleed_tier1 if score @s CAM_bleed_tier2 <= @s CAM_bleed_tier3 run tag @s add CAM_bleed_2
execute if score @s CAM_bleed_tier3 < @s CAM_bleed_tier2 if score @s CAM_bleed_tier3 < @s CAM_bleed_tier1 run tag @s add CAM_bleed_3

execute if entity @s[tag=CAM_bleed_1] run scoreboard players set @s CAM_bleed_tier1 160
execute if entity @s[tag=CAM_bleed_2] run scoreboard players set @s CAM_bleed_tier2 160
execute if entity @s[tag=CAM_bleed_3] run scoreboard players set @s CAM_bleed_tier3 160

tag @s remove CAM_bleed_1
tag @s remove CAM_bleed_2
tag @s remove CAM_bleed_3
