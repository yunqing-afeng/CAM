scoreboard players operation #detector CAM_modtemp = $max CAM_chicken
scoreboard players operation #detector CAM_modtemp += #CAM_constant CAM_tyr_deadline
scoreboard players operation #detector CAM_modtemp += #CAM_constant CAM_tyrant_limit
scoreboard players operation #detector CAM_modtemp += #CAM_constant CAM_tyr_dead_2
scoreboard players operation #detector CAM_modtemp += #CAM_constant CAM_tyr_exp_lim

execute unless score #formerdetector CAM_modtemp matches 0 run scoreboard players operation #formerdetector CAM_modtemp -= #detector CAM_modtemp
execute unless score #formerdetector CAM_modtemp matches 0 run function cam:modules/menu/constant
scoreboard players operation #formerdetector CAM_modtemp = #detector CAM_modtemp