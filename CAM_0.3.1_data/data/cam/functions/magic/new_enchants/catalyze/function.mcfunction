xp add @s -5 points
scoreboard players set @s CAM_cat_cool 200
execute if score #particle CAM_module matches 1 run particle soul ~ ~ ~ 0.5 1 0.5 0 15 normal
playsound minecraft:block.sculk_catalyst.bloom player @a ~ ~ ~ 1 1
execute if predicate cam:enchant/catalyze/health run function cam:magic/new_enchants/catalyze/health
execute if predicate cam:enchant/catalyze/strength run function cam:magic/new_enchants/catalyze/strength
execute if predicate cam:enchant/catalyze/defence run function cam:magic/new_enchants/catalyze/defence
execute if predicate cam:enchant/catalyze/random run function cam:magic/new_enchants/catalyze/random