function cam:random/random
data modify storage random multi_2 set from storage random multi_1
scoreboard players set #trigger random 0
function cam:random/multi/sub3
execute if score #trigger random matches 0 run data modify storage random multi_1 append value 1
execute if score #trigger random matches 0 store result storage random multi_1[-1] int 1 run scoreboard players get #result random
execute if score #trigger random matches 1 run function cam:random/multi/sub2