execute if predicate cam:furance/bamboo/smoker_fuel run scoreboard players add @s CAM_bamboo_tick 1
execute if predicate cam:furance/bamboo/smoker_fuel_ run function cam:machine/furnace/tick/recipes/bamboo/smoker_sub
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get @s CAM_bamboo_tick
execute if data block ~ ~ ~ {CookTime:99s} run function cam:machine/furnace/tick/recipes/bamboo/smoker_replace
execute if score @s CAM_bamboo_tick matches 100.. run scoreboard players set @s CAM_bamboo_tick 0
data modify block ~ ~ ~ CookTimeTotal set value 100s