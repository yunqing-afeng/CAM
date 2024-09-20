execute if predicate cam:weapon/illager_axe/swift1 run tag @s add CAM_swift1
execute if predicate cam:weapon/illager_axe/swift2 run tag @s add CAM_swift2
execute if predicate cam:weapon/illager_axe/swift3 run tag @s add CAM_swift2

execute if entity @s[tag=CAM_swift1] run item modify entity @s weapon.offhand cam:illager_axe/swift_1
execute if entity @s[tag=CAM_swift2] run item modify entity @s weapon.offhand cam:illager_axe/swift_2

playsound minecraft:item.axe.wax_off player @a ~ ~ ~ 1 1 0
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

tag @s remove CAM_swift1
tag @s remove CAM_swift2