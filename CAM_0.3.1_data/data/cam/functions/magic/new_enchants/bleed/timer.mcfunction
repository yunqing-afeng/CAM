#tick_remove
execute unless score @s CAM_bleed_timer matches ..-1 run scoreboard players remove @s CAM_bleed_timer 1
execute unless score @s CAM_bleed_tier1 matches ..-1 run scoreboard players remove @s CAM_bleed_tier1 1
execute unless score @s CAM_bleed_tier2 matches ..-1 run scoreboard players remove @s CAM_bleed_tier2 1
execute unless score @s CAM_bleed_tier3 matches ..-1 run scoreboard players remove @s CAM_bleed_tier3 1

#tier_check
scoreboard players set @s CAM_bleed_tiers 0
execute if score @s CAM_bleed_tier1 matches 1.. run scoreboard players add @s CAM_bleed_tiers 1
execute if score @s CAM_bleed_tier2 matches 1.. run scoreboard players add @s CAM_bleed_tiers 1
execute if score @s CAM_bleed_tier3 matches 1.. run scoreboard players add @s CAM_bleed_tiers 1

tag @s remove CAM_bleed
execute if score @s CAM_bleed_tiers matches 1.. run tag @s add CAM_bleed
