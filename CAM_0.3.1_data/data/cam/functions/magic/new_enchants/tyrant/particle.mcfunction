scoreboard players set #random_min random 1
scoreboard players set #random_max random 60
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 6..8 run particle smoke ~ ~1 ~ .5 .5 .5 0 20 force

execute if score @s random matches 7..9 if score @s CAM_tyrant_power matches 0..1000 run particle minecraft:dust 1 0 0 0.2 ~ ~1 ~ 1 1 1 1 1 normal
execute if score @s random matches 7..9 unless score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim if score @s CAM_tyrant_power < @s CAM_tyr_dead_2 if score @s CAM_tyrant_power matches 1000.. run particle minecraft:dust 0.706 0 0 0.6 ~ ~1 ~ 1 1 1 1 2 normal
execute if score @s random matches 7..9 unless score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim if score @s CAM_tyrant_power > @s CAM_tyr_dead_2 run particle minecraft:dust 0.447 0 0 1 ~ ~1 ~ 1 1 1 3 5 normal

execute if score @s CAM_tyrant_kill matches 1.. run playsound particle.soul_escape ambient @a ~ ~ ~ 1
execute if score @s CAM_tyrant_kill matches 1.. run particle soul ~ ~ ~ 1 0.3 1 0.1 50