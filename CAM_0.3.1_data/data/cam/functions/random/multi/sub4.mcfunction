execute store result score #temp random run data get storage random multi_2[0]
execute if score #result random = #temp random run scoreboard players set #trigger random 1
data remove storage random multi_2[0]
function cam:random/multi/sub3