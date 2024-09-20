scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random

execute if score @s random matches 1 run function cam:cm/celebration_harpoon/fireworks/1
execute if score @s random matches 2 run function cam:cm/celebration_harpoon/fireworks/2
execute if score @s random matches 3 run function cam:cm/celebration_harpoon/fireworks/3
execute if score @s random matches 4 run function cam:cm/celebration_harpoon/fireworks/4
execute if score @s random matches 5 run function cam:cm/celebration_harpoon/fireworks/5
execute if score @s random matches 6 run function cam:cm/celebration_harpoon/fireworks/6
execute if score @s random matches 7 run function cam:cm/celebration_harpoon/fireworks/7
execute if score @s random matches 8 run function cam:cm/celebration_harpoon/fireworks/8
execute if score @s random matches 9 run function cam:cm/celebration_harpoon/fireworks/9
execute if score @s random matches 10 run function cam:cm/celebration_harpoon/fireworks/10
execute if score @s random matches 11 run function cam:cm/celebration_harpoon/fireworks/11
execute if score @s random matches 12 run function cam:cm/celebration_harpoon/fireworks/12
execute if score @s random matches 13 run function cam:cm/celebration_harpoon/fireworks/13
execute if score @s random matches 14 run function cam:cm/celebration_harpoon/fireworks/14
execute if score @s random matches 15 run function cam:cm/celebration_harpoon/fireworks/15
execute if score @s random matches 16 run function cam:cm/celebration_harpoon/fireworks/16
execute if score @s random matches 17 run function cam:cm/celebration_harpoon/fireworks/17
execute if score @s random matches 18 run function cam:cm/celebration_harpoon/fireworks/18
execute if score @s random matches 19 run function cam:cm/celebration_harpoon/fireworks/19
execute if score @s random matches 20 run function cam:cm/celebration_harpoon/fireworks/20

execute as @e[tag=CAM_ch_temp,type=firework_rocket] run function cam:cm/celebration_harpoon/fireworks_