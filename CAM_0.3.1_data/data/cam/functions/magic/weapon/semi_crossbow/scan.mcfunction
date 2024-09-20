#初始化
summon armor_stand ~ 318 ~ {Invisible:1b,Marker:1b,Tags:["CAM_semibow_temp"],ShowArms:1b}
tag @s add CAM_semibow_charged
execute if predicate cam:misc/semibow/charge_m store result score @s CAM_semi_max run data get entity @s SelectedItem.tag.CAM_semibow_capacity
execute if predicate cam:misc/semibow/charge_o store result score @s CAM_semi_max run data get entity @s Inventory[{Slot:-106b}].tag.CAM_semibow_capacity
scoreboard players set #temp CAM_semi_max 1

execute at @s run function cam:magic/weapon/semi_crossbow/scan_sub


kill @e[tag=CAM_semibow_temp]
tag @s remove CAM_semibow_charged
scoreboard players reset @s CAM_semibow_scan

