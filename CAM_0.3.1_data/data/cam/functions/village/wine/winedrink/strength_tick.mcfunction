execute unless score @s CAM_dstrength_gt matches -2.. unless score @s CAM_dstrength_gt matches ..-2 run scoreboard players set @s CAM_dstrength_gt 0
execute if score @s CAM_dstrength matches 1.. run scoreboard players remove @s CAM_dstrength 1
execute if score @s CAM_dstrength matches 0 unless score @s CAM_dstrength_gt matches ..0 run effect give @s minecraft:strength 1 0
execute if score @s CAM_dstrength matches 0 unless score @s CAM_dstrength_gt matches ..0 run scoreboard players remove @s CAM_dstrength_gt 1
execute if score @s CAM_dstrength matches 0 if score @s CAM_dstrength_gt matches ..0 run scoreboard players set @s CAM_dstrength -1