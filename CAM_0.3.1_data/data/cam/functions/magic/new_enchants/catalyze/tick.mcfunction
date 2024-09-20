execute if score #tick CAM_cat_dxp matches 1..4 run scoreboard players add #tick CAM_cat_dxp 1
execute if score #tick CAM_cat_dxp matches 5.. run scoreboard players set #tick CAM_cat_dxp 1

execute as @a if predicate cam:enchant/catalyze/main run function cam:magic/new_enchants/catalyze/tick_
execute as @a unless predicate cam:enchant/catalyze/main run function cam:magic/new_enchants/catalyze/tick__
execute as @a if score @s CAM_cat_cool matches 1.. run scoreboard players remove @s CAM_cat_cool 1