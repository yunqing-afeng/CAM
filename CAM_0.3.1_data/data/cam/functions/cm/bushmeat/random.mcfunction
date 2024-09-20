advancement revoke @s only cam:countryside_and_magic/bushmeat_eat
scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 1..60 run effect give @s minecraft:nausea 10 1
execute if score @s random matches 1..40 run effect give @s minecraft:poison 40 3

scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 1..20 run effect give @s minecraft:strength 10 0