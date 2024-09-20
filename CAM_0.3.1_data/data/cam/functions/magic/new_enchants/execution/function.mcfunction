execute store result score @s CAM_execute_lvl run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:execution"}].lvl
scoreboard players set @s CAM_execute_temp 0
execute if predicate cam:misc/cane_o store result score @s CAM_execute_temp run data get entity @s Inventory[{Slot:-106b}].tag.CAM_Enchantments[{id:"cam:execution"}].lvl
execute if score @s CAM_execute_temp > @s CAM_execute_lvl run scoreboard players operation @s CAM_execute_lvl = @s CAM_execute_temp
scoreboard players set @s CAM_execute_h 5
scoreboard players operation @s CAM_execute_h += @s CAM_execute_lvl
tag @s add CAM_exer
execute as @e[type=#uin:tech/mobs,tag=!CAM_exer,distance=..5] if score @s CAM_htracer <= @a[tag=CAM_exer,sort=nearest,limit=1] CAM_execute_h at @s run function cam:magic/new_enchants/execution/particle
tag @s remove CAM_exer
execute if score @s CAM_execute matches 1.. if predicate cam:enchant/execution/execution positioned ^ ^ ^2.5 run function cam:magic/new_enchants/execution/function_