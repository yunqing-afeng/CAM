execute as @e[type=arrow,tag=CAM_extend,nbt={PortalCooldown:0}] run kill @s
execute as @a if score @s CAM_shoot matches 1.. run function cam:magic/weapon/illager_axe/shoot/do

#execute as @e[type=arrow,tag=!done] run function test:get