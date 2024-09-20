execute as @a[predicate=cam:enchant/execution/execution,predicate=!cam:misc/cane] at @s anchored eyes run function cam:magic/new_enchants/execution/function
execute as @a[predicate=cam:misc/cane] at @s anchored eyes positioned ^ ^ ^2.5 run function cam:magic/new_enchants/execution/function
scoreboard players reset @a CAM_execute