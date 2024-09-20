data modify storage random multi_1 set value []
data modify storage random multi_2 set value []

scoreboard players set #cur_count random 0
scoreboard players operation #delta random = #random_max random
scoreboard players operation #delta random -= #random_min random
scoreboard players add #delta random 1
execute if score #count random <= #delta random run function cam:random/multi/sub1