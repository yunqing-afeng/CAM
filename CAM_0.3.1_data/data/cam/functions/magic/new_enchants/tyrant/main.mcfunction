#能量累积
execute as @s unless score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim unless entity @s[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}}] run scoreboard players add @s CAM_tyr_powersub 1
execute as @s unless score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim if entity @s[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}}] run scoreboard players add @s CAM_tyrant_power 1
execute as @s if score @s CAM_tyr_powersub matches 3.. run scoreboard players add @s CAM_tyrant_power 1
execute as @s if score @s CAM_tyr_powersub matches 3.. run scoreboard players set @s CAM_tyr_powersub 0

execute if score @s CAM_tyrant_kill matches 1.. run scoreboard players add @s CAM_tyrant_limit 1
execute if score @s CAM_tyrant_kill matches 1.. run scoreboard players set @s CAM_tyr_expiate 0
execute as @s[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}},tag=CAM_tyrant] run scoreboard players set @s CAM_tyr_expiate 0
execute as @s unless entity @s[scores={CAM_shield_down=0..},nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:shield"}]}}}] unless score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim if score @s CAM_tyrant_power <= @s CAM_tyr_dead_2 run title @s actionbar {"translate":"enchantment.cam.general","with":[{"translate":"title.cam.tyrant","color": "black"},{"score":{"name": "*","objective": "CAM_tyrant_power"},"color": "red"}]}
execute as @s unless score @s CAM_tyr_expiate >= @s CAM_tyr_exp_lim if score @s CAM_tyrant_power > @s CAM_tyr_dead_2 run title @s actionbar {"translate":"enchantment.cam.general","with":[{"translate":"title.cam.tyrant","color": "dark_red"},{"score":{"name": "*","objective": "CAM_tyrant_power"},"color": "dark_red"}]}

#生效
effect give @s resistance 1 1 true
execute as @s[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}},nbt=!{ActiveEffects:[{Id:5b}]},tag=CAM_tyrant] if score @s CAM_tyrant_power matches 200.. at @s run attribute @s generic.attack_damage modifier add 8ac722da-5339-4c1e-9502-88a6b21150a5 "tyrant" 1 multiply_base
execute as @s unless data entity @s {SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}} at @s run attribute @s generic.attack_damage modifier remove 8ac722da-5339-4c1e-9502-88a6b21150a5
execute as @s if score @s CAM_tyrant_power matches ..199 run attribute @s generic.attack_damage modifier remove 8ac722da-5339-4c1e-9502-88a6b21150a5

execute as @s[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:tyrant"}]}}}] if score @s CAM_tyrant_dam matches 1.. if score @s CAM_tyrant_power matches 200.. at @s run function cam:magic/new_enchants/tyrant/function
execute if score @s CAM_tyrant_kill matches 1.. if score @s CAM_tyrant_power matches ..999 run scoreboard players add @s CAM_tyrant_power 200
execute if score @s CAM_tyrant_kill matches 1.. if score @s CAM_tyrant_power matches 1000.. run scoreboard players remove @s CAM_tyrant_power 200

#死亡
execute as @s run function cam:magic/new_enchants/tyrant/limit
#粒子效果
execute as @s at @s if score #particle CAM_module matches 1 run function cam:magic/new_enchants/tyrant/particle