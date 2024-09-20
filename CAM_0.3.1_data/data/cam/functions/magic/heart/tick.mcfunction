execute as @a[scores={CAM_damage=1..},nbt={Inventory:[{tag:{poison:1b},Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:poison"}]}}}] at @s anchored eyes positioned ^ ^ ^2.5 run function cam:magic/heart/execute
execute as @a[scores={CAM_hh_use=1..},predicate=cam:misc/hh] run function cam:magic/heart/tick_

scoreboard players reset @a[scores={CAM_damage=1..}] CAM_damage
scoreboard players reset @a[scores={CAM_hh_use=1..}] CAM_hh_use