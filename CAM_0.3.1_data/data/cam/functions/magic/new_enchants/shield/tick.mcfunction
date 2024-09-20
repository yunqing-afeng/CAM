#预操作
execute as @a run scoreboard players operation @s CAM_shield_down0 += @s CAM_shield_down1
execute as @a run scoreboard players operation @s CAM_shield_down0 += @s CAM_shield_down2
execute as @a run scoreboard players operation @s CAM_shield_down0 += @s CAM_shield_down3
#功能
execute as @a[predicate=cam:enchant/shield] if score @s CAM_shield_tri matches 1.. unless score @s CAM_shield_down matches 1.. run tag @s add CAM_shield
execute as @a[scores={CAM_shield_down0=1..}] at @s run function cam:magic/new_enchants/shield/down
execute as @a if score @s CAM_shield_tri matches ..0 run tag @s remove CAM_shield
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{CAM_Enchantments:[{id:"cam:shield"}]}}]}] unless entity @s[nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:shield"}]}}}] run tag @s remove CAM_shield


execute as @a[predicate=cam:enchant/shield] run tag @s add CAM_shield_hold
execute as @a unless predicate cam:enchant/shield run tag @s remove CAM_shield_hold
execute as @a[tag=CAM_shield_hold] run scoreboard players set @s CAM_shi_relt 0
execute as @a[tag=!CAM_shield_hold] run scoreboard players add @s CAM_shi_relt 1

#效果
effect give @a[tag=CAM_shield] resistance 1 3 true
execute as @a[tag=CAM_shield] at @s run particle dust 1 0.737 0.169 .7 ~ ~1 ~ 1 1 1 1 20 normal
#失效
execute as @a[scores={CAM_shield_down=0..}] run function cam:magic/new_enchants/shield/count
execute as @a[scores={CAM_shield_down=0..},predicate=cam:enchant/shield] unless score @s CAM_tyrant_power > @s CAM_tyr_dead_2 run title @s actionbar {"translate":"enchantment.cam.general","with":[{"translate":"title.cam.shield_next","color": "aqua"},{"score":{"name": "*","objective": "CAM_shield_down"},"color": "gold"}]}
execute as @a unless predicate cam:enchant/shield if score @s CAM_shi_relt matches 1 run title @s actionbar {"text":""}
#重置计分板
scoreboard players set @a CAM_shield_tri 0
scoreboard players reset @a CAM_shield_down0
scoreboard players reset @a CAM_shield_down1
scoreboard players reset @a CAM_shield_down2
scoreboard players reset @a CAM_shield_down3

#物品效果
execute as @e[type=item,nbt={Item:{tag:{CAM_Enchantments:[{id:"cam:shield"}]}}}] at @s run particle totem_of_undying ~ ~ ~ 0.5 1 0.5 0.1 1 normal