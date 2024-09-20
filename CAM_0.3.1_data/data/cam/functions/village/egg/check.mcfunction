scoreboard players set #random_min random 1
scoreboard players set #random_max random 256
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @s random matches 33..64 run summon minecraft:chicken ~ ~ ~ {Age:-24000}
execute if score @s random matches 64 run summon minecraft:chicken ~ ~ ~ {Age:-24000}
execute if score @s random matches 64 run summon minecraft:chicken ~ ~ ~ {Age:-24000}
execute if score @s random matches 64 run summon minecraft:chicken ~ ~ ~ {Age:-24000}
execute unless data entity @s {Item:{Count:1b}} store result entity @s Item.Count byte 0.99999 run data get entity @s Item.Count
execute if data entity @s {Item:{Count:1b}} run kill @s