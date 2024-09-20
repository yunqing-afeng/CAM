#注意：随机变量取值>=2!!!
function cam:random/random
scoreboard players operation #result1 random = #result random
function cam:random/two_selected_sub
execute unless score #result random = #result1 random run scoreboard players operation #result2 random = #result random