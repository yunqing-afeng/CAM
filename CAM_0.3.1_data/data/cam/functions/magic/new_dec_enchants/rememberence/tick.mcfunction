execute as @a[predicate=cam:enchant/rememberence] at @s if score @s CAM_rem matches 1.. run function cam:magic/new_dec_enchants/rememberence/tick_
execute as @a[predicate=cam:enchant/rememberence] at @s if score @s CAM_remkill matches 1.. run function cam:magic/new_dec_enchants/rememberence/kill
scoreboard players reset @a CAM_rem
scoreboard players reset @a CAM_remkill