#timer and damage
execute if score @s CAM_bleed_timer matches 0 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 20 if score @s CAM_bleed_tiers matches 3 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 30 if score @s CAM_bleed_tiers matches 2 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 40 if score @s CAM_bleed_tiers matches 3 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 40 if score @s CAM_bleed_tiers matches 1 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 60 if score @s CAM_bleed_tiers matches 2..3 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 80 if score @s CAM_bleed_tiers matches 3 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 80 if score @s CAM_bleed_tiers matches 1 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 90 if score @s CAM_bleed_tiers matches 2 run damage @s 1 cam:bleed
execute if score @s CAM_bleed_timer matches 100 if score @s CAM_bleed_tiers matches 3 run damage @s 1 cam:bleed


execute if score @s CAM_bleed_timer matches 0 run scoreboard players set @s CAM_bleed_timer 120

#particle
scoreboard players set #random_min random 1
scoreboard players set #random_max random 60
function cam:random/random
scoreboard players operation @s random = #result random

execute if score @s random matches 7..12 if score @s CAM_bleed_tiers matches 1 run particle minecraft:dust 1 0 0 0.4 ~ ~1 ~ .5 .5 .5 0 15 normal
execute if score @s random matches 7..15 if score @s CAM_bleed_tiers matches 2 run particle minecraft:dust 0.706 0 0 0.6 ~ ~1 ~ .5 .5 .5 0 15 normal
execute if score @s random matches 7..18 if score @s CAM_bleed_tiers matches 3 run particle minecraft:dust 0.447 0 0 1 ~ ~1 ~ .5 .5 .5 0 15 normal