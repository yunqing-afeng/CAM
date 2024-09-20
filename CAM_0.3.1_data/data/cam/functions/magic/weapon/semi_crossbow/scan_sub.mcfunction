#新一轮检测
scoreboard players add #temp CAM_semi_max 1
scoreboard players set @s CAM_semibow_scan 0
execute store result score @s CAM_semi_charge run clear @s #arrows 0
item replace entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] armor.chest with air
item replace entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] armor.head with air
item replace entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] weapon.mainhand with air

#检测主副手
execute if score @s CAM_semi_charge matches 1.. if predicate cam:misc/semibow/mainhand run data modify entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] ArmorItems[3] set from entity @s SelectedItem
execute if score @s CAM_semi_charge matches 1.. if predicate cam:misc/semibow/offhand run data modify entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] ArmorItems[3] set from entity @s Inventory[{Slot:-106b}]

#检测
execute if score @s CAM_semi_charge matches 1.. unless predicate cam:misc/semibow/offhand unless predicate cam:misc/semibow/mainhand run function cam:magic/weapon/semi_crossbow/scan_
execute if score @s CAM_semi_charge matches 0 if entity @s[gamemode=creative] run item replace entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] armor.chest with arrow

#处理
setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if predicate cam:misc/semibow/charge_m run function cam:magic/weapon/semi_crossbow/charge__
execute if predicate cam:misc/semibow/charge_o run function cam:magic/weapon/semi_crossbow/charge___

execute if score @s CAM_semi_charge matches 1.. run function cam:magic/weapon/semi_crossbow/charge
execute if score @s CAM_semi_charge matches 0 if entity @s[gamemode=creative] run function cam:magic/weapon/semi_crossbow/charge

execute if predicate cam:misc/semibow/charge_m run item replace entity @s weapon.mainhand from block ~ 319 ~ container.0
execute if predicate cam:misc/semibow/charge_o run item replace entity @s weapon.offhand from block ~ 319 ~ container.0
setblock ~ 319 ~ air
#返还
execute store result score @s CAM_semi_count run data get entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] ArmorItems[3].Count 1
scoreboard players remove @s CAM_semi_count 1
execute store result entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] ArmorItems[3].Count byte 1 run scoreboard players get @s CAM_semi_count
execute if score @s CAM_semi_count matches ..0 as @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] run item replace entity @s armor.head with air
execute unless entity @s[gamemode=creative] run function cam:magic/weapon/semi_crossbow/return


execute if score #temp CAM_semi_max < @s CAM_semi_max run function cam:magic/weapon/semi_crossbow/scan_sub
