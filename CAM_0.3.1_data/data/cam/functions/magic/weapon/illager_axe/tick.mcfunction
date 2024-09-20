#手持
execute as @a[predicate=cam:weapon/illager_axe/0,predicate=cam:weapon/chain_blade/-106] at @s run function cam:magic/weapon/illager_axe/replace

#副手
execute as @a[predicate=cam:weapon/illager_axe/-106] at @s run function cam:magic/weapon/illager_axe/swift

#Extend
execute as @e[type=arrow,tag=CAM_extend,nbt={PortalCooldown:0}] run kill @s
execute as @a if score @s CAM_shoot matches 1.. if predicate cam:weapon/illager_axe/1 if score @s CAM_ext_cooldown matches 0 run function cam:magic/weapon/illager_axe/shoot/do
scoreboard players set @a CAM_shoot 0

execute as @a if score @s CAM_ext_cooldown matches 1.. run scoreboard players remove @s CAM_ext_cooldown 1
execute as @a unless score @s CAM_ext_cooldown matches 1.. run scoreboard players set @s CAM_ext_cooldown 0
execute as @a if score @s CAM_ext_count matches 1.. run scoreboard players remove @s CAM_ext_count 1
execute as @a unless score @s CAM_ext_count matches 1.. run scoreboard players set @s CAM_ext_count 0

execute as @a if predicate cam:weapon/illager_axe/2 at @s if score @s CAM_ext_count matches 0 run item modify entity @s weapon.mainhand cam:illager_axe/swift_1