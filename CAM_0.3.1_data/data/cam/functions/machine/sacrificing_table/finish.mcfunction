tag @s remove CAM_sac_start
scoreboard players operation #6 CAM_sac_number = @s CAM_sac_number
execute as @e[type=minecraft:armor_stand,tag=CAM_sac_ready] if score @s CAM_sac_number = #6 CAM_sac_number at @s run function cam:machine/sacrificing_table/summon
