execute if predicate cam:furance/copper/fuel run scoreboard players add @s CAM_copper_tick 1
execute if predicate cam:furance/copper/fuel_ run function cam:machine/furnace/tick/recipes/copper/smoker_sub
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get @s CAM_copper_tick
execute if data block ~ ~ ~ {CookTime:199s} run function cam:machine/furnace/tick/recipes/copper/replace
execute if score @s CAM_copper_tick matches 200.. run scoreboard players set @s CAM_copper_tick 0
data modify block ~ ~ ~ CookTimeTotal set value 200s
