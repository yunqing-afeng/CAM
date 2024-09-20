scoreboard players operation @s CAM_tyr_deadline = #CAM_constant CAM_tyr_deadline
scoreboard players operation #temp CAM_tyr_deadline = @s CAM_tyrant_limit
scoreboard players operation #temp CAM_tyr_deadline *= #CAM_constant CAM_tyrant_limit
scoreboard players operation @s CAM_tyr_deadline -= #temp CAM_tyr_deadline
execute if score @s CAM_tyr_deadline <= #CAM_constant CAM_tyr_dead_2 run scoreboard players operation @s CAM_tyr_deadline = #CAM_constant CAM_tyr_dead_2
scoreboard players operation @s CAM_tyr_dead_2 = @s CAM_tyr_deadline
scoreboard players remove @s CAM_tyr_dead_2 1200
execute if score @s CAM_tyrant_power > @s CAM_tyr_deadline at @s run function cam:magic/new_enchants/tyrant/die

