execute if predicate cam:furance/leather/fuel run scoreboard players add @s CAM_leather_tick 1
execute if predicate cam:furance/leather/fuel_ run function cam:machine/furnace/tick/recipes/leather/smoker_sub
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get @s CAM_leather_tick
execute if data block ~ ~ ~ {CookTime:199s} run function cam:machine/furnace/tick/recipes/leather/replace
execute if score @s CAM_leather_tick matches 200.. run scoreboard players set @s CAM_leather_tick 0
data modify block ~ ~ ~ CookTimeTotal set value 200s