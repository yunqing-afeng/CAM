#预处理
scoreboard players operation @a[tag=CAM_tyrant] CAM_tyr_exp_lim = #CAM_constant CAM_tyr_exp_lim
scoreboard players operation @a[tag=CAM_tyrant] CAM_tyr_exp_lim *= #CAM_constant CAM_tyr_expiate
#诅咒上身
execute as @a[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}},tag=!CAM_tyrant] at @s run function cam:magic/new_enchants/tyrant/curse

execute as @a[tag=CAM_tyrant] run function cam:magic/new_enchants/tyrant/main

#赎罪
scoreboard players add @a[tag=CAM_tyrant] CAM_tyr_expiate 1
scoreboard players set @a[tag=!CAM_tyrant] CAM_tyr_expiate 0
execute as @a[tag=CAM_tyrant,tag=!CAM_expiate] if score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim run scoreboard players set @s CAM_tyr_exp_dis 300
execute as @a[tag=CAM_tyrant,tag=!CAM_expiate] if score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim run tag @s add CAM_expiate
execute as @a[tag=!CAM_tyrant,tag=CAM_expiate] run tag @s remove CAM_expiate
execute as @a[tag=CAM_tyrant,tag=CAM_expiate] unless score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim run tag @s remove CAM_expiate
execute as @a[tag=CAM_tyrant,tag=CAM_expiate] at @s run function cam:magic/new_enchants/tyrant/expiate

#重置
scoreboard players reset @a CAM_tyrant_kill
scoreboard players reset @a CAM_tyrant_dam
execute as @a[tag=!CAM_tyrant] run scoreboard players set @s CAM_tyrant_power 0
execute as @a[tag=!CAM_tyrant] run scoreboard players set @s CAM_tyr_powersub 0
execute as @a[tag=!CAM_tyrant] run scoreboard players set @s CAM_tyrant_limit 0

#物品效果
execute as @e[type=item,nbt={Item:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}}] at @s run particle minecraft:dust 0.231 0 0 1 ~ ~ ~ 0.2 0.5 0.2 0.02 3 normal @a